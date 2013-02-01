opening
morphicWindow
	"Create a morphic widget so that we can interact with the receiver."
	
	|  window |
	myChangeSet ifNil: [self myChangeSet: ChangeSet current]. 
	window := (SystemWindow labelled: self labelString) model: self.
	self openIn: window rect: (0@0 extent: 1@1).
	^ window
