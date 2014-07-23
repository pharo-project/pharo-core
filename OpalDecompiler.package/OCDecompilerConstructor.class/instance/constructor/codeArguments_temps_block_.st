codeArguments: args temps: temps block: block 
	block arguments: args.
	block body temporaries: (temps collect: [ :e | e isIndirectTempVector ifTrue: [ e remoteTemps ] ifFalse: [ e ] ]) flattened.
	^ block