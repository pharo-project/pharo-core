accessing
allMethodsInCategory: category 
	"Answer the collection of methods that are contained in a particular method category"
	
	"SystemNavigation default allMethodsInCategory: 'printing'"

	| aCollection |
	aCollection := Set new.
			self allBehaviorsDo: [ :behavior | ((category = ClassOrganizer allCategory
					ifTrue: [ behavior organization allMethodSelectors]
					ifFalse: [ behavior organization listAtCategoryNamed: category])) do:
				[ :sel | aCollection add: (self createMethodNamed: sel realParent: behavior)]].
	^aCollection.
