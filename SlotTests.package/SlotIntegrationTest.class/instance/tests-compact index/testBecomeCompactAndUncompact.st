testBecomeCompactAndUncompact

	| originalCompactClassesArray |
	aClass := self makeWithLayout: PointerLayout.	
	self assert: aClass indexIfCompact equals: 0.
	originalCompactClassesArray := Smalltalk compactClassesArray copy.

	[ 
		
	"The class becomes compact, so we are not in the original state."	
	aClass becomeCompact.
	self assert: aClass indexIfCompact > 0.
	self deny: Smalltalk compactClassesArray = originalCompactClassesArray. 
	
	] ensure: [ 

	"The class becomes uncompact, so we are back in the original state."
	aClass becomeUncompact.
	self assert: aClass indexIfCompact equals: 0. 
	self assert: Smalltalk compactClassesArray equals: originalCompactClassesArray. 
	
	].

