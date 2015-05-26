onRemovedFrom: aBrick
	"is called when brick is removed from aBrick"
	self subbricks do: [ :each | each onRemovedFrom: aBrick ]