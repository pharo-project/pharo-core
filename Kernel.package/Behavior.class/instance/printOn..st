printing
printOn: aStream 
	"Refer to the comment in Object|printOn:." 

	aStream nextPutAll: 'a descendent of '.
	superclass printOn: aStream