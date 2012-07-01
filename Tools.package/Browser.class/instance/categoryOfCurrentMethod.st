message category functions
categoryOfCurrentMethod
	"Determine the method category associated with the receiver at the current moment, or nil if none"

	| aCategory |
	^ super categoryOfCurrentMethod ifNil:
		[(aCategory := self messageCategoryListSelection) == ClassOrganizer allCategory
					ifTrue:
						[nil]
					ifFalse:
						[aCategory]]