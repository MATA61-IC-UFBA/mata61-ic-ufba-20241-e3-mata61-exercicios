/* token.h */

typedef enum {
        ID = 256, 
	NUM,
        ARRAY,
        BOOL,
        /* 260 */
        CHAR,
        ELSE,
        FALSE,
        FOR,
        FUNC,
        IF,
        INT,
        PRINT,
        RETURN,
        STR,
        /* 270 */
        TRUE,
        VOID,
        WHILE,
        LTE,
        GTE,
        EQU,
        NEQ,
        AND,
        OR,
	ERROR
} token_t;
