as yet unclassified
asNBExternalType: gen

	^ (gen optionAt: #WinUnicode) 
		ifTrue: [ 'wchar_t' asNBExternalType: gen ]
		ifFalse: [ #uchar asNBExternalType: gen ]
