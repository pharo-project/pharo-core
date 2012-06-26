instance creation
browseVersionsOf: method class: aClass meta: meta category: msgCategory selector: aSelector

	class := meta 
		ifTrue: [ aClass theMetaClass ]
		ifFalse: [ aClass  theNonMetaClass ].

	selector := aSelector.
	
	^ self buildBrowser