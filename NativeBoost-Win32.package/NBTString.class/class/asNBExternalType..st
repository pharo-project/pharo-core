as yet unclassified
asNBExternalType: gen

	^ (gen optionAt: #WinUnicode) 
		ifTrue: [ NBWideString asNBExternalType: gen ]
		ifFalse: [ NBExternalString asNBExternalType: gen ]
