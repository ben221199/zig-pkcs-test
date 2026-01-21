const pkcs11: type = @import("pkcs11.zig");
const std: type = @import("std");

const version: pkcs11.CK_VERSION = pkcs11.CK_VERSION{
    .major = 0x02,
    .minor = 0x28,
};

var functionList: pkcs11.CK_FUNCTION_LIST = pkcs11.CK_FUNCTION_LIST{
    .version = version,
    .C_Initialize = C_Initialize,
    .C_Finalize = C_Finalize,
    .C_GetInfo = C_GetInfo,
    .C_GetFunctionList = C_GetFunctionList,
    .C_GetSlotList = C_GetSlotList,
};

export fn C_Initialize(pInitArgs: pkcs11.CK_VOID_PTR) callconv(.c) pkcs11.CK_RV  {
    std.debug.print("[CALLED]: C_Initialize(pInitArgs={})\n",.{pInitArgs});
    //TODO
    return 0;
}

export fn C_Finalize(pReserved: pkcs11.CK_VOID_PTR) callconv(.c) pkcs11.CK_RV {
    std.debug.print("[CALLED]: C_Finalize(pReserved={})\n",.{pReserved});
    //TODO
    return 0;
}

export fn C_GetInfo(pInfo: pkcs11.CK_INFO_PTR) callconv(.c) pkcs11.CK_RV{
    std.debug.print("[CALLED]: C_GetInfo(pInfo={})\n",.{pInfo});

    pInfo.cryptokiVersion = version;
    std.mem.copyForwards(u8,&pInfo.manufacturerID,"Yocto");
    pInfo.flags = 0;
    std.mem.copyForwards(u8,&pInfo.libraryDescription,"KMIP HSM Test module");
    pInfo.libraryVersion = pkcs11.CK_VERSION{
        .major = 0,
        .minor = 1,
    };

    return 0;
}

export fn C_GetFunctionList(ppFunctionList: pkcs11.CK_FUNCTION_LIST_PTR_PTR) callconv(.c) pkcs11.CK_RV {
    std.debug.print("[CALLED]: C_GetFunctionList(ppFunctionList={})\n",.{ppFunctionList});

    if(@intFromPtr(ppFunctionList)==0){
        return 123; // TODO Better error
    }

    ppFunctionList.* = &functionList;

    return 0;
}

// TODO C_GetInterfaceList

// TODO C_GetInterface

export fn C_GetSlotList(tokenPresent: pkcs11.CK_BBOOL,pSlotList: pkcs11.CK_SLOT_ID_PTR,pulCount: pkcs11.CK_ULONG_PTR) pkcs11.CK_RV {
    std.debug.print("[CALLED]: C_GetSlotList(ppFunctionList={},pSlotList={},pulCount={})\n",.{tokenPresent,pSlotList,pulCount});
    return 0;
}