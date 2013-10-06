allMethodsSelect: aBlock 
	"Answer a SortedCollection of each method that, when used as the block  
	argument to aBlock, gives a true result."
	| aCollection |
	aCollection := SortedCollection new.
	self allBehaviorsDo: [:class | class
						selectorsAndMethodsDo: [:sel :m | (aBlock value: m)
								ifTrue: [aCollection
										add: (self createMethodNamed: sel realParent: class)]]].
	^ aCollection