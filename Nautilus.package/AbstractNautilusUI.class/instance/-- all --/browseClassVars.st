browseClassVars

	| cls |
	self selectedClass ifNil: [ 
		self changed: #isAClassSelected.
		^ self ].
	cls := self selectedClass theNonMetaClass.
	(cls notNil and: [cls isTrait not])
		ifTrue: [ self systemNavigation browseClassVarRefs: cls ].
		
	