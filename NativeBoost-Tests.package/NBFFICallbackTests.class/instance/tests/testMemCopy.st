testMemCopy

	| mem bytes |


	bytes := #[ 1 2 3 4 5 6 7 8 9 10 ].
	
	mem := NativeBoost allocate: bytes size.
	
	[
	NativeBoost memCopy: bytes to: mem size: bytes size.
	
	1 to: bytes size do: [:i |
		self assert: (bytes at:i) = (mem byteAt: i-1)
		].
	] ensure: [ NativeBoost free: mem ]