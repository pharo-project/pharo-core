basic function
reformulateList

     classOfMethod organization classComment ifNil: [^ self].

	self scanVersionsOf: classOfMethod.
	self changed: #list. "for benefit of mvc"
	listIndex := 1.
	self changed: #listIndex.
	self contentsChanged