 RUNCMDRMT:  CMD        PROMPT('Run CL CMD on Remote Partition')
             /* Command processing program is RUNCMDRMT   */
             PARM       KWD(CMD) TYPE(*CMDSTR) LEN(2000) MIN(1) +
                          PROMPT('CL command to run')
             PARM       KWD(RMTSYS) TYPE(*SNAME) LEN(64) MIN(1) +
                          EXPR(*YES) PROMPT('Remote system')
