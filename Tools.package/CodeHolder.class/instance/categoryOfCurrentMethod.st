categories
categoryOfCurrentMethod
	"Answer the category that owns the current method.  If unable to determine a category, answer nil."

	| aClass aSelector |
	^ (aClass := self selectedClassOrMetaClass) 
		ifNotNil: [(aSelector := self selectedMessageName) 
			            ifNotNil: [aClass whichCategoryIncludesSelector: aSelector]]