accessing
selectedClass: aClass

	selectedClass := aClass.
	self selectedCategory: nil.
	aClass ifNotNil: [ self recentClasses add: aClass theNonMetaClass ].
	self announcer announce: ( NautilusClassSelected class: aClass )