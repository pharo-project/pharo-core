checkClass: aClass 
	((aClass includesSelector: #=) and: [ (aClass includesSelector: #hash) not ]) ifTrue: [ result addClass: aClass ]