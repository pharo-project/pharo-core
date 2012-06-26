query
allImplementorsOf: aSelector localTo: aClass 
	"Answer a SortedCollection of all the methods that implement the message  
	aSelector in, above, or below the given class."
	| cls aCollection |
	aCollection := SortedCollection new.
	cls := aClass theNonMetaClass.
	cls withAllSuperAndSubclassesDo: [:class | (class includesSelector: aSelector)
						ifTrue: [ aCollection
									add: (self createMethodNamed: aSelector realParent: class) ]].
	cls class withAllSuperAndSubclassesDo: [:class | (class includesSelector: aSelector)
						ifTrue: [ aCollection
									add: (self createMethodNamed: aSelector realParent: class) ]].
	^ aCollection