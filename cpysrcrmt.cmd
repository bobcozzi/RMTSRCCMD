 CPYSRCRMT:  CMD        PROMPT('COZZI-Copy Remote Src Mbr')

              /* Command Processing Program is: CPYSRCRMT  */

             PARM       KWD(FROMSRC) TYPE(FROMSRC) MIN(1) +
                          PROMPT('From source file')
 FROMSRC:    ELEM       TYPE(FROMQUAL) MIN(1) PROMPT('Source file')
             ELEM       TYPE(*CHAR) LEN(64) DFT(*LOCAL) +
                          SPCVAL((*LOCAL)) EXPR(*YES) +
                          INLPMTLEN(25) PROMPT('From System')
 FROMQUAL:   QUAL       TYPE(*NAME) MIN(1) EXPR(*YES)
             QUAL       TYPE(*NAME) DFT(*LIBL) SPCVAL((*LIBL) +
                          (*CURLIB)) EXPR(*YES) PROMPT('From library')
             PARM       KWD(TOSRC) TYPE(TOSRC) MIN(1) +
                          PROMPT('To source file')
 TOSRC:      ELEM       TYPE(TOQUAL) PROMPT('Source +
                          file')
             ELEM       TYPE(*CHAR) LEN(64) DFT(*LOCAL) +
                          SPCVAL((*LOCAL)) EXPR(*YES) +
                          INLPMTLEN(25) PROMPT('To System')
 TOQUAL:     QUAL       TYPE(*NAME) DFT(*FROMSRC) SPCVAL((*FROMSRC)) +
                          EXPR(*YES)
             QUAL       TYPE(*NAME) DFT(*FROMLIB) SPCVAL((*FROMLIB) +
                          (*LIBL) (*CURLIB)) EXPR(*YES) PROMPT('To +
                          library')
             PARM       KWD(FROMMBR) TYPE(*GENERIC) LEN(10) MIN(1) +
                          SPCVAL((*ALL) (*FIRST)) EXPR(*YES) +
                          PROMPT('From member')
             PARM       KWD(TOMBR) TYPE(*NAME) LEN(10) DFT(*FROMMBR) +
                          SPCVAL((*FROMMBR) (*FIRST)) EXPR(*YES) +
                          PROMPT('To member')
             PARM       KWD(MBROPT) TYPE(*CHAR) LEN(10) RSTD(*YES) +
                          DFT(*REPLACE) SPCVAL((*ADD) (*REPLACE)) +
                          EXPR(*YES) PROMPT('Replace or add records')
             PARM       KWD(SRCTYPE) TYPE(*NAME) LEN(10) +
                          DFT(*FROMMBR) SPCVAL((*SAME) (*FROMMBR)) +
                          PROMPT('To member SEU Type (v7.1)')
             PARM       KWD(TEXT) TYPE(*CHAR) LEN(10) RSTD(*YES) +
                          DFT(*FROMMBR) SPCVAL((*SAME) (*FROMMBR)) +
                          PROMPT('Text ''description'' (v7.1)')
