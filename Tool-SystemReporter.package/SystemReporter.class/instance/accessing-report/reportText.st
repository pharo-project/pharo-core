reportText

	^ (report isNil or: [categoriesSelected isEmpty])
		ifTrue: ['-- Choose any category on the left --']
		ifFalse: [report]