accessing method dictionary
allMethodsInCategory: aName 
	"Answer a list of all the methods of the receiver and all its 
	superclasses that are in the category named aName"
	
	| aColl |
	aColl := OrderedCollection new.
	self withAllSuperclasses do: [:aClass | 
		aColl addAll: (aName = ClassOrganizer allCategory
						ifTrue: [aClass organization allMethodSelectors]
						ifFalse: [aClass organization listAtCategoryNamed: aName])].
	^ aColl asSet asArray sort