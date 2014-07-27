classRenamed: anAnnouncement
	
	| class |
	class := anAnnouncement classRenamed.
	window ifNil: [ ^ self].
	window isDisplayed ifFalse: [ ^ self ].
	((self showGroups 
	and: [ self selectedGroup elements includes: class ]) 
	or: [ self classWidget getClassesList includes: class ])
			ifTrue: [ self updateClassView ]