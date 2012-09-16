printing
printWithClosureAnalysisOn: aStream 
	self ensureClosureAnalysisDone.
	precedence = 1
		ifTrue: 
			[(self selector includesSubstring: '()/')
				ifTrue: [aStream nextPutAll: (self selector copyUpTo: $)).
						arguments
							do: [:arg| aStream nextPutAll: arg key]
							separatedBy: [aStream nextPutAll: ', '].
						aStream nextPut: $)]
				ifFalse: [aStream nextPutAll: self selector]]  "no node for method selector"
		ifFalse: 
			[self selector keywords with: arguments do: 
				[:kwd :arg | 
				aStream nextPutAll: kwd; space.
				arg printDefinitionForClosureAnalysisOn: aStream.
				aStream space]].
	comment == nil ifFalse: 
			[aStream crtab: 1.
			 self printCommentOn: aStream indent: 1].
	temporaries size > 0 ifTrue: 
			[aStream crtab: 1; nextPut: $|.
			temporaries do: [:temp | 
				aStream space.
				temp printDefinitionForClosureAnalysisOn: aStream].
			aStream space; nextPut: $|].
	primitive > 0 ifTrue:
		[(primitive between: 255 and: 519) ifFalse:  "Dont decompile quick prims  e.g, ^ self or ^instVar"
			[aStream crtab: 1.
			 self printPrimitiveOn: aStream]].
	self printPropertiesOn: aStream.
	self printPragmasOn: aStream.
	aStream crtab: 1.
	block printWithClosureAnalysisStatementsOn: aStream indent: 0