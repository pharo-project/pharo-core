printing
printStringLimitedTo: aNumber
	^ String streamContents: [:s | self printOn: s] 