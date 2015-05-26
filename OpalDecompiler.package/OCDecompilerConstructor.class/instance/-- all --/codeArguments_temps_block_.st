codeArguments: args temps: temps block: block 
	| temporaries |
	block arguments: args.
	temporaries := temps reject: [ :e | e propertyAt: #hidden ifAbsent: false ].
	block body temporaries: (temporaries collect: [ :e | e isIndirectTempVector ifTrue: [ e remoteTemps ] ifFalse: [ e ] ]) flattened.
	^ block