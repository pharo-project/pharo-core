testing
ifNotEmpty: aBlock
	"Evaluate the given block with the receiver as argument, answering its value
      unless the receiver is empty, in which case answer the receiver

      If the block has an argument, eval with the receiver as its argument,
      but it might be better to use ifNotEmptyDo: to make the code easier to
      understand"
	"Note that the fact that this method returns its argument in case the receiver is empty
	allows one to write expressions like the following ones:
		self classifyMethodAs: (myProtocol ifEmpty: ['As yet unclassified']"
	
    ^self isEmpty
          ifTrue: [self]
          ifFalse: [aBlock cull: self]
