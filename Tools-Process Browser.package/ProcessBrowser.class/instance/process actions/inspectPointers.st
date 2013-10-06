inspectPointers
	| tc pointers |
	selectedProcess ifNil: [^self].
	tc := thisContext.
	pointers := selectedProcess pointersToExcept: { 
						self processList.
						tc.
						self}.
	pointers isEmpty ifTrue: [^self].
	OrderedCollectionInspector 
		openOn: pointers
		withEvalPane: false
		withLabel: 'Objects pointing to ' , selectedProcess browserPrintString