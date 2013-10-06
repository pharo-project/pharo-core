browseHierarchy: aClass selector: aSelector
	"Open a browser"
	(aClass == nil)  ifTrue: [^ self].

	^ Smalltalk tools browser new
			spawnHierarchyForClass: aClass 
			selector: aSelector;
			yourself.