updateScroller

	container removeAllMorphs.
	buttonsContainer removeAllMorphs.
	
	self hasSingleElement
		ifTrue: [ 
			self 
				updateScrollerWithOneElement;
				updateLayoutForSingle]
		ifFalse: [ 
			self 
				updateScrollerWithMultipleElements;
				updateLayoutForMultiple ].
	