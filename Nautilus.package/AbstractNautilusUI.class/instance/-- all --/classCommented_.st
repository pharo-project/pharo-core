classCommented: anAnnouncement
	" announcement handled when a class has been commented " 
	| aClass |

	window ifNil: [ ^ self ].
	window isDisplayed ifFalse: [ ^ self ].

	aClass := anAnnouncement classCommented.	
	(self classWidget getClassesList includes: aClass)
		ifTrue: [ self removeFromClassesIconsCache: aClass ].
	
	((self selectedClass = aClass) and: [ self showComment ])
		ifTrue: [ self changed: #getComments ]