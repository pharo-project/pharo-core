returnViaRegisters
"
answer true if return-by-value for given struct are returned in registers.
1byte, 2 bytes, and 4 bytes structures are returned in EAX.
8 byte structures are returned in EDX:EAX
otherwise it is assumed that caller passing a hidden argument (a pointer to struct)
which callee using for filling the data
"
"Both Mac OS X x86 and Win32 x86 return structs of a power of two in size
less than or equal to eight bytes in length in registers. Linux never does so. "
	^NativeBoost platformId = NativeBoostConstants linux32PlatformId
		ifTrue:[false]
		ifFalse:[ #(1 2 4 8) includes: self valueSize]