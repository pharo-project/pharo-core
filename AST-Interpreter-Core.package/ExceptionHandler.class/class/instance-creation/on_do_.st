on: anException do: aBlock
	^ self new
		exception: anException;
		block: aBlock;
		yourself