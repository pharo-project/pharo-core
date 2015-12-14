newType: aType size: aNumber
	"Create a new array using internal memory."
	^ self basicNew 
		initializeType: aType size: aNumber;
		yourself