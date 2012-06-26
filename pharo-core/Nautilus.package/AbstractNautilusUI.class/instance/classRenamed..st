system announcements
classRenamed: anAnnouncement
	
	| class |
	class := anAnnouncement item.
	window ifNil: [ ^ self].
	window isDisplayed ifFalse: [ ^ self ].
	((self showGroups 
	and: [ self selectedGroup elements includes: class ]) 
	or: [ self getList2 includes: class ])
			ifTrue: [ self updateClassView ]