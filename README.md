# RMTSRCCMD
Run remote CL command and copy source members to remote partitions
This repository contains 2 IBM i CL commands:
 1) CPYSRCRMT - Copy source members between partitions
 2) RUNCMDRMT - Run a CL command on a remote parition

Both the .cmd and .clle of the same names should be compiled on the IBM i system. It only needs to be on the partition where the command is run. That is, it is not required on the remote parttions. But certainly may be installed there as well.
