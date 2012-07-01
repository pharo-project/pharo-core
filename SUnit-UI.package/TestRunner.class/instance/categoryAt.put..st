accessing-categories
categoryAt: anInteger put: aBoolean
	categoriesSelected := categoriesSelected
		perform: (aBoolean ifTrue: [ #copyWith: ] ifFalse: [ #copyWithout: ])
		with: (categories at: anInteger ifAbsent: [ ^ self ]).
	self changed: #categorySelected; updateClasses.