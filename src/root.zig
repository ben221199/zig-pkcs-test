const pkcs11: type = @import("pkcs11.zig");
const std: type = @import("std");

// export fn C_Initialize(pInitArgs: pkcs11.CK_VOID_PTR) pkcs11.CK_RV {
//     pInitArgs.*;
//     return 0;
// }


export fn C_GetFunctionList(ppFunctionList: pkcs11.CK_FUNCTION_LIST_PTR_PTR) pkcs11.CK_RV {
    std.debug.print("[CALLED]: C_GetFunctionList\n",.{});
    std.debug.print(" - Version {}\n",.{ppFunctionList});
    // ppFunctionList.*.*.C_Initialize = C_Initialize;
    return 123;
}