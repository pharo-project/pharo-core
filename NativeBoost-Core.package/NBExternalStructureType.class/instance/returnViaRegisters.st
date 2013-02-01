testing
returnViaRegisters
"
answer true if return-by-value for given struct are returned in registers.
otherwise it is assumed that caller passing a hidden argument (a pointer to struct)
which callee using for filling the data
"
	^ #(1 2 4 8) includes: self valueSize