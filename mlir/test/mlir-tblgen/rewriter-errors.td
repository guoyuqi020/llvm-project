// RUN: not mlir-tblgen -gen-rewriters -I %S/../../include -DERROR1 %s 2>&1 | FileCheck --check-prefix=ERROR1 %s
// RUN: not mlir-tblgen -gen-rewriters -I %S/../../include -DERROR2 %s 2>&1 | FileCheck --check-prefix=ERROR2 %s
// RUN: not mlir-tblgen -gen-rewriters -I %S/../../include -DERROR3 %s 2>&1 | FileCheck --check-prefix=ERROR3 %s

include "mlir/IR/OpBase.td"

// Check using the dialect name as the namespace
def A_Dialect : Dialect {
  let name = "a";
}

class A_Op<string mnemonic, list<OpTrait> traits = []> :
    Op<A_Dialect, mnemonic, traits>;

def OpA : A_Op<"op_a">, Arguments<(ins AnyInteger, AnyInteger)>, Results<(outs AnyInteger)>;
def OpB : A_Op<"op_b">, Arguments<(ins AnyInteger, AnyAttr:$value)>, Results<(outs AnyInteger)>;

#ifdef ERROR1
def NativeMatcher : NativeCodeCall<"success(nativeCall($0, $1))">;
// ERROR1: [[@LINE+1]]:1: error: NativeCodeCall must have $_self as argument for passing the defining Operation
def : Pat<(OpA (NativeMatcher $val), AnyI32Attr:$arg),
          (OpB $val, $arg)>;
#endif

#ifdef ERROR2
def NativeMatcher : NativeCodeCall<"success(nativeCall($_self, &$0))">;
// ERROR2: [[@LINE+1]]:1: error: binding symbol 'error' to NativecodeCall in MatchPattern is not supported
def : Pat<(OpA (NativeMatcher:$error $val), AnyI32Attr:$arg),
          (OpB $val, $arg)>;
#endif

#ifdef ERROR3
def NativeMatcher : NativeCodeCall<"success(nativeCall($_self, $0, $1))">;
// ERROR3: [[@LINE+1]]:1: error: Matching nested tree in NativeCodecall not support for
def : Pat<(OpA (NativeMatcher (OpB $val, $unused)), AnyI32Attr:$arg),
          (OpB $val, $arg)>;
#endif
