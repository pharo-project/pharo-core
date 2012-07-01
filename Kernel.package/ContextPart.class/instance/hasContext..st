query
hasContext: aContext 
	"Answer whether aContext is me or one of my senders"

	^ (self findContextSuchThat: [:c | c == aContext]) notNil