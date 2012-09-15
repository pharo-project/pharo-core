system announcements
classDefinitionModified: anAnnouncement 

	| class |
	window ifNil: [^ self ].
	window isDisplayed ifFalse: [ ^ self ].
	class := anAnnouncement newClassDefinition.
	((self showGroups 
	and: [  self selectedGroup notNil
	and: [ self selectedGroup elements includes: class ]]) 
	or: [ self getList2 includes: class ])
			ifTrue: [
			self updateClassView.
			self removeFromPackagesIconsCache: class package.
			sourceTextArea hasUnacceptedEdits 
				ifFalse: [ self changed: #sourceCodeFrom: ]].