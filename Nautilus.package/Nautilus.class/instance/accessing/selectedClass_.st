selectedClass: aClass
	selectedClass := aClass.
	self selectedCategory: nil.
	aClass ifNotNil: [
	self announcer announce: (NautilusClassSelected class: aClass).
	self ui ifNotNil: [ self ui sourceTextModel announce: NautilusClassSelected ] ]