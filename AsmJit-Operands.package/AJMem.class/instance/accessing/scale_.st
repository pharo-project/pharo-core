scale: aScale
	"a valid scale values is 1 , 2 , 4 and 8"

	aScale = 1 ifTrue: [  shift := 0. ^ self ].	
	aScale = 2 ifTrue: [  shift := 1. ^ self ].	
	aScale = 4 ifTrue: [  shift := 2. ^ self ].	
	aScale = 8 ifTrue: [  shift := 3. ^ self ].	
		
	self error: 'invalid scale value'