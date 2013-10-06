setValue: newValue
	"Called internally for propagation to model"
	self value: newValue.
	

	accessor ifNotNil: [
		^ model perform: accessor asMutator with: value
		].
	
	setValueSelector ifNotNil: [
		^model perform: setValueSelector with: value
		].