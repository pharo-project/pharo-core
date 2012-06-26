tests - iterating
testSelect

	| res element |
	res := self collectionWithoutNilElements  select: [:each | each notNil].
	self assert: res size = self collectionWithoutNilElements size.
	
	element := self collectionWithoutNilElements anyOne.
	res := self collectionWithoutNilElements  select: [:each | (each = element) not].
	self assert: res size = (self collectionWithoutNilElements size - 1).
	