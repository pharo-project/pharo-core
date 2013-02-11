printing
printReport
	self stderr lf; 
		nextPutAll: 'Finished running '; print: maxTest; 
		nextPutAll: ' Test'; nextPutAll: (maxTest = 1 ifTrue: [''] ifFalse: ['s']); lf