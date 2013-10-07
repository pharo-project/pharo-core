allSelect: aBlock 
	"Answer a Collection of each method that, when used as 
	the block  
	argument to aBlock, gives a true result."
	| aCollection |
	aCollection := OrderedCollection new.
	self allBehaviorsDo: [:class | class
					selectorsAndMethodsDo: [:sel :meth | (aBlock value: meth)
								ifTrue: [aCollection add: class name , ' ' , sel]]].
	^ aCollection