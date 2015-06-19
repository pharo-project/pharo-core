checkClass: aClass 
	(self isUnpackaged: aClass) ifTrue: [
		self result addClass: aClass ]