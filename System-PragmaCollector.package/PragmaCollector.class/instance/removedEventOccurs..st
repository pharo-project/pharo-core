system changes
removedEventOccurs: anEvent
	"a method has been removed, remove any corresponding handler if found"
	(self
				detect: [:prag | prag selector = anEvent itemSelector
						and: [prag methodClass = anEvent itemClass ]])
		ifNotNil: [:found | self removePragma: found]