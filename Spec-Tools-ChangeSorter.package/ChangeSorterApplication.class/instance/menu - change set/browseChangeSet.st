browseChangeSet
	"Open a message list browser on methods in the current change set"

	| messages |
	messages := self selectedChangeSet changedMessageList select: [ :each | each isValid].	
	Smalltalk tools  messageList
		openMessageList: messages 
		name: 'Methods in Change Set ', self selectedChangeSet name 
		autoSelect: ''