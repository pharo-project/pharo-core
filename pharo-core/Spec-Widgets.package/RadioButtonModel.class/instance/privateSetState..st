private
privateSetState: aBoolean
	"Should only be used by RadioButtonGroup"
	
	self stateHolder contents: aBoolean.
	self changed: #state