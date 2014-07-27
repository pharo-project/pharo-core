keyPressedOnList: anEvent shifted: aBoolean
	(anEvent keyCharacter == self class nextFocusKey
		and: [ (list canExpand not or: [ list isExpanded ]) ]) 
		ifTrue: [  
			self giveFocusTo: self classWidget.
			^ true ].
	
		^ false
