< aSpan
	"Answer true if receiver is closer to start of the text than argument, false otherwise.
	Note, spans must belong to same text"
	
	|  forward backward  |
	
	text == aSpan text ifFalse: [ self error: 'Cannot compare positions belonging to different text' ].

	"equivalent case first"
	self == aSpan ifTrue: [  ^ false ].
	
	"go both ways: forward and backward.. and see where is span relative to receiver"
	forward := backward := self.
	 [
		forward := forward next.
		backward := backward prev.
	
		forward == aSpan ifTrue: [ ^ true ].
		backward == aSpan ifTrue: [ ^ false ].
		
		"reached start"
		backward isAtStart ifTrue: [ ^ true ]. 
		"reached end"
		forward isAtEnd ifTrue: [ ^ false ].
		
	] repeat.
	