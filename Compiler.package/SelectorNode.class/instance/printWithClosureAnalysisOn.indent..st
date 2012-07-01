printing
printWithClosureAnalysisOn: aStream indent: level 
	aStream nextPutAll: (key == nil
							ifTrue: ['<key==nil>']
							ifFalse: [key])