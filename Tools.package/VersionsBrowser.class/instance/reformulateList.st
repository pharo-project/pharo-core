init & update
reformulateList
	| aMethod |
	"Some uncertainty about how to deal with lost methods here"
	aMethod := classOfMethod compiledMethodAt: selectorOfMethod ifAbsent: [^ self].
	
	self scanVersionsOf: aMethod class: classOfMethod theNonMetaClass meta: classOfMethod isMeta category: (classOfMethod whichCategoryIncludesSelector: selectorOfMethod) selector: selectorOfMethod.
	self changed: #list. "for benefit of mvc"
	listIndex := 1.
	self changed: #listIndex.
	self contentsChanged
