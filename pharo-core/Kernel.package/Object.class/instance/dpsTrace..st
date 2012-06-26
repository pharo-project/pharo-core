error handling
dpsTrace: reportObject  
	Transcript myDependents isNil ifTrue: [^self].
	self dpsTrace: reportObject levels: 1 withContext: thisContext
		
" nil dpsTrace: 'sludder'. "