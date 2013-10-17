explorerKey: aChar from: view

	currentSelection ifNotNil: [
	
		aChar == $i ifTrue: [^ self inspectSelection].
		aChar == $I ifTrue: [^ self exploreSelection].

		aChar == $b ifTrue:	[^ self object browse].
		aChar == $h ifTrue:	[^ self systemNavigation browseHierarchy: self object class].		
	].

	^ self arrowKey: aChar from: view