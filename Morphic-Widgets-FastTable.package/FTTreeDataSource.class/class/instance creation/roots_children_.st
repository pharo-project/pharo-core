roots: aCollection children: aBlock
	^ self new
		items: aCollection;
		childrenBlock: aBlock;
		yourself