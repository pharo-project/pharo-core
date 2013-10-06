machineCodeSize
	^ machineCode ifNil: [ 0 ] ifNotNil: [ machineCode size ]