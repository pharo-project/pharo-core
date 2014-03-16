classDefinitionModified: anAnnouncement 

	| class |
	window ifNil: [^ self ].
	window isDisplayed ifFalse: [ ^ self ].
	class := anAnnouncement oldClassDefinition. 
	((self showGroups 
	and: [  self selectedGroup notNil
	and: [ self selectedGroup elements includes: class ]]) 
	or: [ self getList2 includes: class ])
			ifTrue: [
			(model selectedClass = anAnnouncement oldClassDefinition) ifTrue: [ model selectedClass: anAnnouncement newClassDefinition ]. "Minimal change to fix Case13006. Further investigation required in Pharo 4 on Case13020"
			self updateClassView.
			self removeFromPackagesIconsCache: class package.
			sourceTextArea hasUnacceptedEdits 
				ifFalse: [ self changed: #sourceCodeFrom: ]].