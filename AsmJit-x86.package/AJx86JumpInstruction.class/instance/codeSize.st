accessing
codeSize 
	machineCode ifNil: [  ^ 2 ].
	^ machineCode size