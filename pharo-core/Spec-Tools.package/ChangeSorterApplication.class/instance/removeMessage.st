menu - message
removeMessage
	"Remove the selected message from the system."
	
	self okToChange
		ifFalse: [^ self].
	self selectedSelector
		ifNotNil: [:selector |
				(self model removeMethod: selector inClass: self selectedClass)
					ifTrue: [ self updateMessagesList ]]