comparing
= aPoint

	self species = aPoint species
		ifTrue: [^x = aPoint 
	"Refer to the comment in Object|=." x and: [y = aPoint y]]
		ifFalse: [^false]