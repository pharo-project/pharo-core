private
indent: anInteger around: aBlock 
	indent := indent + anInteger.
	^aBlock ensure: [indent := indent - anInteger]