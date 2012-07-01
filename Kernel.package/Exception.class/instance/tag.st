accessing
tag
	"Return an exception's tag value."

	^tag == nil
		ifTrue: [ self messageText ]
		ifFalse: [ tag ]