checkClass: aClass 
	aClass selectors size >= self methodsCount
		ifTrue: [ result addClass: aClass ]