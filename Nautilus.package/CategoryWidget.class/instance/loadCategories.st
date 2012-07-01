protocol
loadCategories
	| class |
	class := self model selectedClass.
	class ifNil: [ ^ #() ].
	
	^ self model showGroups
		ifTrue: [ self loadGroupsCategoriesFor: class ]
		ifFalse: [ self loadPackagesCategoriesFor: class ]