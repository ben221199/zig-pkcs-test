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

const CK_VERSION: type = struct {
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

const CK_C_Initialize: type = *const fn(pInitArgs: CK_VOID_PTR) callconv(.c) CK_RV;
const CK_C_Finalize: type = *fn(pReserved: CK_VOID_PTR) CK_RV;
//const CK_C_GetInfo: type = *fn(pInfo: CK_INFO_PTR) CK_RV;
const CK_C_GetFunctionList: type = *fn(ppFunctionList: CK_FUNCTION_LIST_PTR_PTR) CK_RV;
//const CK_C_GetSlotList: type = *fn(tokenPresent: CK_BBOOL,pSlotList: CK_SLOT_ID_PTR,pulCount: CK_ULONG_PTR) CK_RV;

const CK_FUNCTION_LIST: type = struct {
    version: CK_VERSION,
    C_Initialize: CK_C_Initialize,
    C_Finalize: CK_C_Finalize,
    //C_GetInfo: CK_C_GetInfo,
};

const CK_FUNCTION_LIST_PTR: type = *CK_FUNCTION_LIST;

pub const CK_FUNCTION_LIST_PTR_PTR: type = *CK_FUNCTION_LIST_PTR;