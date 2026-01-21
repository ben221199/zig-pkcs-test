// Section 1.3

// Data Types

const CK_BYTE: type = u8;

const CK_CHAR: type = CK_BYTE;

const CK_UTF8CHAR: type = CK_BYTE;

/// @
const CK_BBOOL: type = CK_BYTE;

const CK_ULONG: type = c_ulong;

const CK_LONG: type = c_long;

const CK_FLAGS: type = CK_ULONG;

// Pointers

const CK_BYTE_PTR: type = *CK_BYTE;
const CK_CHAR_PTR: type = *CK_CHAR;
const CK_UTF8CHAR_PTR: type = *CK_UTF8CHAR;
const CK_ULONG_PTR: type = *CK_ULONG;
pub const CK_VOID_PTR: type = *void;

const CK_VOID_PTR_PTR: type = *CK_VOID_PTR;

const NULL_PTR: type = *null;

// Boolean

const CK_FALSE: CK_BBOOL = 0;
const CK_TRUE: CK_BBOOL = 1;

const FALSE: CK_BBOOL = CK_FALSE;
const TRUE: CK_BBOOL = CK_TRUE;

// ----------------------------------------- //

// Skipped section 2

// ----------------------------------------- //

// Section 3.1

pub const CK_VERSION: type = extern struct {
    major: CK_BYTE,
    minor: CK_BYTE,
};

const CK_VERSION_PTR: type = *CK_VERSION;

//CK_INFO
//CK_INFO_PTR
//CK_NOTIFICATION

// Section 3.6

pub const CK_RV: type = CK_ULONG;

//const CK_NOTIFY: type;//TODO

const CK_C_Initialize: type = *const fn(pInitArgs: CK_VOID_PTR) CK_RV;
const CK_C_Finalize: type = *const fn(pReserved: CK_VOID_PTR) CK_RV;
const CK_C_GetInfo: type = *const fn() CK_RV; //TODO
//const CK_C_GetFunctionList: type = *const fn(ppFunctionList: CK_FUNCTION_LIST_PTR_PTR) CK_RV;
const CK_C_GetFunctionList: type = *const fn(ppFunctionList: *?*CK_FUNCTION_LIST) CK_RV;
const CK_C_GetSlotList: type = *const fn() CK_RV; //TODO
const CK_C_GetSlotInfo: type = *const fn() CK_RV; //TODO
const CK_C_GetTokenInfo: type = *const fn() CK_RV; //TODO
const CK_C_GetMechanismList: type = *const fn() CK_RV; //TODO
const CK_C_GetMechanismInfo: type = *const fn() CK_RV; //TODO
const CK_C_InitToken: type = *const fn() CK_RV; //TODO
const CK_C_InitPIN: type = *const fn() CK_RV; //TODO
const CK_C_SetPIN: type = *const fn() CK_RV; //TODO
const CK_C_OpenSession: type = *const fn() CK_RV; //TODO
const CK_C_CloseSession: type = *const fn() CK_RV; //TODO
const CK_C_CloseAllSessions: type = *const fn() CK_RV; //TODO
const CK_C_GetSessionInfo: type = *const fn() CK_RV; //TODO
const CK_C_GetOperationState: type = *const fn() CK_RV; //TODO
const CK_C_SetOperationState: type = *const fn() CK_RV; //TODO
const CK_C_Login: type = *const fn() CK_RV; //TODO
const CK_C_Logout: type = *const fn() CK_RV; //TODO
const CK_C_CreateObject: type = *const fn() CK_RV; //TODO
const CK_C_CopyObject: type = *const fn() CK_RV; //TODO
const CK_C_DestroyObject: type = *const fn() CK_RV; //TODO
const CK_C_GetObjectSize: type = *const fn() CK_RV; //TODO
const CK_C_GetAttributeValue: type = *const fn() CK_RV; //TODO
const CK_C_SetAttributeValue: type = *const fn() CK_RV; //TODO
const CK_C_FindObjectsInit: type = *const fn() CK_RV; //TODO
const CK_C_FindObjects: type = *const fn() CK_RV; //TODO
const CK_C_FindObjectsFinal: type = *const fn() CK_RV; //TODO
const CK_C_EncryptInit: type = *const fn() CK_RV; //TODO
const CK_C_Encrypt: type = *const fn() CK_RV; //TODO
const CK_C_EncryptUpdate: type = *const fn() CK_RV; //TODO
const CK_C_EncryptFinal: type = *const fn() CK_RV; //TODO
const CK_C_DecryptInit: type = *const fn() CK_RV; //TODO
const CK_C_Decrypt: type = *const fn() CK_RV; //TODO
const CK_C_DecryptUpdate: type = *const fn() CK_RV; //TODO
const CK_C_DecryptFinal: type = *const fn() CK_RV; //TODO
const CK_C_DigestInit: type = *const fn() CK_RV; //TODO
const CK_C_Digest: type = *const fn() CK_RV; //TODO
const CK_C_DigestUpdate: type = *const fn() CK_RV; //TODO
const CK_C_DigestKey: type = *const fn() CK_RV; //TODO
const CK_C_DigestFinal: type = *const fn() CK_RV; //TODO
const CK_C_SignInit: type = *const fn() CK_RV; //TODO
const CK_C_Sign: type = *const fn() CK_RV; //TODO
const CK_C_SignUpdate: type = *const fn() CK_RV; //TODO
const CK_C_SignFinal: type = *const fn() CK_RV; //TODO
const CK_C_SignRecoverInit: type = *const fn() CK_RV; //TODO
const CK_C_SignRecover: type = *const fn() CK_RV; //TODO
const CK_C_VerifyInit: type = *const fn() CK_RV; //TODO
const CK_C_Verify: type = *const fn() CK_RV; //TODO
const CK_C_VerifyUpdate: type = *const fn() CK_RV; //TODO
const CK_C_VerifyFinal: type = *const fn() CK_RV; //TODO
const CK_C_VerifyRecoverInit: type = *const fn() CK_RV; //TODO
const CK_C_VerifyRecover: type = *const fn() CK_RV; //TODO
const CK_C_DigestEncryptUpdate: type = *const fn() CK_RV; //TODO
const CK_C_DecryptDigestUpdate: type = *const fn() CK_RV; //TODO
const CK_C_SignEncryptUpdate: type = *const fn() CK_RV; //TODO
const CK_C_DecryptVerifyUpdate: type = *const fn() CK_RV; //TODO
const CK_C_GenerateKey: type = *const fn() CK_RV; //TODO
const CK_C_GenerateKeyPair: type = *const fn() CK_RV; //TODO
const CK_C_WrapKey: type = *const fn() CK_RV; //TODO
const CK_C_UnwrapKey: type = *const fn() CK_RV; //TODO
const CK_C_DeriveKey: type = *const fn() CK_RV; //TODO
const CK_C_SeedRandom: type = *const fn() CK_RV; //TODO
const CK_C_GenerateRandom: type = *const fn() CK_RV; //TODO
const CK_C_GetFunctionStatus: type = *const fn() CK_RV; //TODO
const CK_C_CancelFunction: type = *const fn() CK_RV; //TODO
const CK_C_WaitForSlotEvent: type = *const fn() CK_RV; //TODO

pub const CK_FUNCTION_LIST: type = extern struct {
    version: CK_VERSION,
    C_Initialize: *const fn (*void) c_ulong, //*const fn (*void) c_ulong,//CK_C_Initialize, *const fn (*void) c_ulong *const fn(*void) c_ulong
    //C_Finalize: u64,//CK_C_Finalize,
    //C_GetInfo: u64,//CK_C_GetInfo, *const fn (*void) c_ulong
    //C_GetFunctionList: u64,//CK_C_GetFunctionList,
    // C_GetSlotList: CK_C_GetSlotList,
    // C_GetSlotInfo: CK_C_GetSlotInfo,
    // C_GetTokenInfo: CK_C_GetTokenInfo,
    // C_GetMechanismList: CK_C_GetMechanismList,
    // C_GetMechanismInfo: CK_C_GetMechanismInfo,
    // C_InitToken: CK_C_InitToken,
    // C_InitPIN: CK_C_InitPIN,
    // C_SetPIN: CK_C_SetPIN,
    // C_OpenSession: CK_C_OpenSession,
    // C_CloseSession: CK_C_CloseSession,
    // C_CloseAllSessions: CK_C_CloseAllSessions,
    // C_GetSessionInfo: CK_C_GetSessionInfo,
    // C_GetOperationState: CK_C_GetOperationState,
    // C_SetOperationState: CK_C_SetOperationState,
    // C_Login: CK_C_Login,
    // C_Logout: CK_C_Logout,
    // C_CreateObject: CK_C_CreateObject,
    // C_CopyObject: CK_C_CopyObject,
    // C_DestroyObject: CK_C_DestroyObject,
    // C_GetObjectSize: CK_C_GetObjectSize,
    // C_GetAttributeValue: CK_C_GetAttributeValue,
    // C_SetAttributeValue: CK_C_SetAttributeValue,
    // C_FindObjectsInit: CK_C_FindObjectsInit,
    // C_FindObjects: CK_C_FindObjects,
    // C_FindObjectsFinal: CK_C_FindObjectsFinal,
    // C_EncryptInit: CK_C_EncryptInit,
    // C_Encrypt: CK_C_Encrypt,
    // C_EncryptUpdate: CK_C_EncryptUpdate,
    // C_EncryptFinal: CK_C_EncryptFinal,
    // C_DecryptInit: CK_C_DecryptInit,
    // C_Decrypt: CK_C_Decrypt,
    // C_DecryptUpdate: CK_C_DecryptUpdate,
    // C_DecryptFinal: CK_C_DecryptFinal,
    // C_DigestInit: CK_C_DigestInit,
    // C_Digest: CK_C_Digest,
    // C_DigestUpdate: CK_C_DigestUpdate,
    // C_DigestKey: CK_C_DigestKey,
    // C_DigestFinal: CK_C_DigestFinal,
    // C_SignInit: CK_C_SignInit,
    // C_Sign: CK_C_Sign,
    // C_SignUpdate: CK_C_SignUpdate,
    // C_SignFinal: CK_C_SignFinal,
    // C_SignRecoverInit: CK_C_SignRecoverInit,
    // C_SignRecover: CK_C_SignRecover,
    // C_VerifyInit: CK_C_VerifyInit,
    // C_Verify: CK_C_Verify,
    // C_VerifyUpdate: CK_C_VerifyUpdate,
    // C_VerifyFinal: CK_C_VerifyFinal,
    // C_VerifyRecoverInit: CK_C_VerifyRecoverInit,
    // C_VerifyRecover: CK_C_VerifyRecover,
    // C_DigestEncryptUpdate: CK_C_DigestEncryptUpdate,
    // C_DecryptDigestUpdate: CK_C_DecryptDigestUpdate,
    // C_SignEncryptUpdate: CK_C_SignEncryptUpdate,
    // C_DecryptVerifyUpdate: CK_C_DecryptVerifyUpdate,
    // C_GenerateKey: CK_C_GenerateKey,
    // C_GenerateKeyPair: CK_C_GenerateKeyPair,
    // C_WrapKey: CK_C_WrapKey,
    // C_UnwrapKey: CK_C_UnwrapKey,
    // C_DeriveKey: CK_C_DeriveKey,
    // C_SeedRandom: CK_C_SeedRandom,
    // C_GenerateRandom: CK_C_GenerateRandom,
    // C_GetFunctionStatus: CK_C_GetFunctionStatus,
    // C_CancelFunction: CK_C_CancelFunction,
    // C_WaitForSlotEvent: CK_C_WaitForSlotEvent,
};

pub const CK_FUNCTION_LIST_PTR: type = *CK_FUNCTION_LIST;

pub const CK_FUNCTION_LIST_PTR_PTR: type = ?(*CK_FUNCTION_LIST_PTR);