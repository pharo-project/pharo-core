initialize-release
translateSymFlag: aflag

	" 64-bit mode only instruction "
	aflag == #x64 ifTrue: [ ^ 2r100000000 ].

	" 32-bit mode only instruction "
	aflag == #x86 ifTrue: [ ^ 2r1000000000 ].

	self error: 'unknown flag'.