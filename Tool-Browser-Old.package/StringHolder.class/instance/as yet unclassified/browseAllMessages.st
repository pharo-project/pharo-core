browseAllMessages
	"Create and schedule a message set browser on all implementors of all the messages sent by the current method."

	| aClass aName method filteredList |
	(aName := self selectedMessageName) ifNotNil: [
		method := (aClass := self selectedClassOrMetaClass) compiledMethodAt: aName.
		filteredList := method messages reject: 
			[:each | #(new initialize = ) includes: each].
		self systemNavigation browseAllImplementorsOfList: filteredList asSortedCollection
			 title: 'All messages sent in ', aClass name, '.', aName]
