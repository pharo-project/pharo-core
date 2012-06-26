searching
mostSpecificPackageOfClass: aClass ifNone: aBlock
	
	^ self 
		mostSpecificPackageIn: (self packages select: [ :each | each includesClass: aClass ])
		ifNone: aBlock