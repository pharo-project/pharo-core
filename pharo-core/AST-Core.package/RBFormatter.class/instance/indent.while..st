private
indent: anInteger while: aBlock 
	tabs := tabs + anInteger.
	aBlock value.
	tabs := tabs - anInteger