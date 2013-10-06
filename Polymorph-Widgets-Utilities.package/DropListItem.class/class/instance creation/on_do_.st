on: anObject do: aBlock

	^ self new
		action: aBlock;
		model: anObject;
		yourself