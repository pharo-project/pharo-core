message functions
removeMessage
	"If a message is selected, create a Confirmer so the user can verify that  
	the currently selected message should be removed from the system. If 
	so, remove it. "
	| messageName confirmation |
	messageListIndex = 0
		ifTrue: [^ self].
	self okToChange
		ifFalse: [^ self].
	messageName := self selectedMessageName.
	confirmation := self systemNavigation   confirmRemovalOf: messageName on: self selectedClassOrMetaClass.
	confirmation = 3
		ifTrue: [^ self].
	(self selectedClassOrMetaClass includesLocalSelector: messageName)
		ifTrue: [self selectedClassOrMetaClass removeSelector: messageName]
		ifFalse: [self removeNonLocalSelector: messageName].
	self messageListIndex: 0.
	self changed: #messageList.
	self setClassOrganizer.
	"In case organization not cached"
	confirmation = 2
		ifTrue: [self systemNavigation browseAllCallsOn: messageName]