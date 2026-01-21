const pkcs11: type = @import("pkcs11.zig");
const std: type = @import("std");

export fn C_Initialize(_: pkcs11.CK_VOID_PTR) pkcs11.CK_RV {
    std.debug.print("[CALLED]: C_Initialize()\n",.{});
    //std.debug.print("[CALLED]: C_Initialize({})\n",.{pInitArgs});
    return 0;
}

export fn C_Finalize(pReserved: pkcs11.CK_VOID_PTR) pkcs11.CK_RV {
    std.debug.print("[CALLED]: C_Finalize()\n",.{});
    std.debug.print("[CALLED]: C_Finalize({})\n",.{pReserved});
    //TODO
    pReserved.*;
    return 0;
}

export fn todoFunc() pkcs11.CK_RV {//notSupported
    std.debug.print("[CALLED]\n",.{});
    return 0x54;
}

const version: pkcs11.CK_VERSION = pkcs11.CK_VERSION{
    .major = 0x02,
    .minor = 0x28,
};

var functionList: pkcs11.CK_FUNCTION_LIST = undefined;



//pkcs11.CK_FUNCTION_LIST_PTR_PTR
////ppFunctionList: *pkcs11.CK_FUNCTION_LIST
export fn C_GetFunctionList(ppFunctionList: *?*pkcs11.CK_FUNCTION_LIST) pkcs11.CK_RV {
    std.debug.print("[CALLED]: C_GetFunctionList(ppFunctionList={})\n",.{ppFunctionList});
    std.debug.print(" - ppFunctionList = {} \n",.{@intFromPtr(ppFunctionList)});
    std.debug.print(" - *ppFunctionList = {} \n",.{@intFromPtr(ppFunctionList.*)});

    //if(ppFunctionList==null){
    //    std.debug.print(" - ppFunctionList IS NULL\n",.{});
    //    return 123;
    //}

    // ppFunctionList.* = null;

    //functionList.version = C_Initialize;
    functionList.C_Initialize = &C_Initialize;

    ppFunctionList.* = &functionList;

    // std.debug.print(" - ppFunctionList = {} \n",.{@intFromPtr(ppFunctionList)});
    // std.debug.print(" - *ppFunctionList = {} \n",.{@intFromPtr(ppFunctionList.*)});
    // std.debug.print(" - C_Initialize = {} \n",.{ppFunctionList.*.?.C_Initialize});

    return 0;
}


//
// pkcs11.CK_FUNCTION_LIST{
// .version = version,
// .C_Initialize = C_Initialize,
// //.C_Initialize = &C_Initialize,
// //.C_Finalize = 123,
// //.C_GetInfo = &C_Initialize,
// //.C_GetFunctionList = 123,
// // .C_GetSlotList = todoFunc,
// // .C_GetSlotInfo = todoFunc,
// // .C_GetTokenInfo = todoFunc,
// // .C_GetMechanismList = todoFunc,
// // .C_GetMechanismInfo = todoFunc,
// // .C_InitToken = todoFunc,
// // .C_InitPIN = todoFunc,
// // .C_SetPIN = todoFunc,
// // .C_OpenSession = todoFunc,
// // .C_CloseSession = todoFunc,
// // .C_CloseAllSessions = todoFunc,
// // .C_GetSessionInfo = todoFunc,
// // .C_GetOperationState = todoFunc,
// // .C_SetOperationState = todoFunc,
// // .C_Login = todoFunc,
// // .C_Logout = todoFunc,
// // .C_CreateObject = todoFunc,
// // .C_CopyObject = todoFunc,
// // .C_DestroyObject = todoFunc,
// // .C_GetObjectSize = todoFunc,
// // .C_GetAttributeValue = todoFunc,
// // .C_SetAttributeValue = todoFunc,
// // .C_FindObjectsInit = todoFunc,
// // .C_FindObjects = todoFunc,
// // .C_FindObjectsFinal = todoFunc,
// // .C_EncryptInit = todoFunc,
// // .C_Encrypt = todoFunc,
// // .C_EncryptUpdate = todoFunc,
// // .C_EncryptFinal = todoFunc,
// // .C_DecryptInit = todoFunc,
// // .C_Decrypt = todoFunc,
// // .C_DecryptUpdate = todoFunc,
// // .C_DecryptFinal = todoFunc,
// // .C_DigestInit = todoFunc,
// // .C_Digest = todoFunc,
// // .C_DigestUpdate = todoFunc,
// // .C_DigestKey = todoFunc,
// // .C_DigestFinal = todoFunc,
// // .C_SignInit = todoFunc,
// // .C_Sign = todoFunc,
// // .C_SignUpdate = todoFunc,
// // .C_SignFinal = todoFunc,
// // .C_SignRecoverInit = todoFunc,
// // .C_SignRecover = todoFunc,
// // .C_VerifyInit = todoFunc,
// // .C_Verify = todoFunc,
// // .C_VerifyUpdate = todoFunc,
// // .C_VerifyFinal = todoFunc,
// // .C_VerifyRecoverInit = todoFunc,
// // .C_VerifyRecover = todoFunc,
// // .C_DigestEncryptUpdate = todoFunc,
// // .C_DecryptDigestUpdate = todoFunc,
// // .C_SignEncryptUpdate = todoFunc,
// // .C_DecryptVerifyUpdate = todoFunc,
// // .C_GenerateKey = todoFunc,
// // .C_GenerateKeyPair = todoFunc,
// // .C_WrapKey = todoFunc,
// // .C_UnwrapKey = todoFunc,
// // .C_DeriveKey = todoFunc,
// // .C_SeedRandom = todoFunc,
// // .C_GenerateRandom = todoFunc,
// // .C_GetFunctionStatus = todoFunc,
// // .C_CancelFunction = todoFunc,
// // .C_WaitForSlotEvent = todoFunc,
// }