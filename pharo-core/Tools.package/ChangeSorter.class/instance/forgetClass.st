class list
forgetClass
	"Remove all mention of this class from the changeSet"

	self okToChange ifFalse: [^ self].
	currentClassName ifNotNil: [
		myChangeSet removeClassChanges: currentClassName.
		currentClassName := nil.
		currentSelector := nil.
		self showChangeSet: myChangeSet].
