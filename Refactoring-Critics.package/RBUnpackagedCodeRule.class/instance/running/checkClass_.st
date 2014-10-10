checkClass: aClass 
	(aClass isMeta not and: [ (self packageSatisfying: [ :info | info includesSystemCategory: aClass category ]) isNil ])
		ifTrue: [ self result addClass: aClass ]