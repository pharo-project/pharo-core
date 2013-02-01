printing
printMachineCodeOn: aStream 
	(machineCode isNil
			or: [machineCode isEmpty])
		ifTrue: [^ self].
	aStream padColumn: 65;
		 nextPutAll: '#['.
	machineCode 
		do: [ :byte | 
			byte printOn: aStream base: 16 length: 2 padded: true ]
		separatedBy: [ aStream space ].
	aStream nextPut: $]