searching
mostSpecificPackageOfMethod: aMethodReference ifNone: aBlock

	^ self  
		mostSpecificPackageIn: (self packages select: [ :each | each includesMethodReference: aMethodReference ])
		ifNone: aBlock