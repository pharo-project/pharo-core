as yet unclassified
methodChanged: event
	self default totalNumberOfEntries < 200 ifTrue: [self default quickFillWithCategoryOf: event itemClass].
	self default totalNumberOfEntries < 500 ifTrue: [self default quickFillWithClass: event itemClass].
	self default justCompiled: event itemSelector in: event itemClass.