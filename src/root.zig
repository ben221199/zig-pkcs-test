const pkcs11: type = @import("pkcs11.zig");

fn C_GetFunctionList(ppFunctionList: pkcs11.CK_FUNCTION_LIST_PTR_PTR) pkcs11.CK_RV {
    ppFunctionList.C_Initialize = null;
    return "";
}