API
label: aString

	self label isEmpty ifTrue: [ 
		self forceRefreshOnNextChange.
		self removeAllMorphs.
		self labelMorph contents: aString.
		self updateLayout ].
	
	self width: (labelMorph fontToUse widthOfString: aString) + 25.
	self labelMorph contents: aString.
	
	self changed.