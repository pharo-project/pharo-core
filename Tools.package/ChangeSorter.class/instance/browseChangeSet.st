changeset menu
browseChangeSet
	"Open a message list browser on methods in the current change set"

	| messages |
	messages := myChangeSet changedMessageList select: [ :each | each isValid].	
	Smalltalk tools  messageList
		openMessageList: messages 
		name: 'Methods in Change Set ', myChangeSet name 
		autoSelect: ''