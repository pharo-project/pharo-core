API
label: aString

	self label isEmpty ifTrue: [ 
		self forceRefreshOnNextChange.
		self removeAllMorphs.
		self labelMorph contents: aString.
		self updateLayout ].
	
	self labelMorph contents = aString
		ifFalse: [ self labelMorph contents: aString ].
	
	self changed.