system announcements
classCommented: anAnnouncement
	" announcement handled when a class has been commented " 
	| aClass |

	window ifNil: [ ^ self ].
	window isDisplayed ifFalse: [ ^ self ].

	aClass := anAnnouncement item.	
	(self getList2 includes: aClass)
		ifTrue: [ self removeFromClassesIconsCache: aClass ].
	
	((self selectedClass = aClass) and: [ self showComment ])
		ifTrue: [ self changed: #getComments ]