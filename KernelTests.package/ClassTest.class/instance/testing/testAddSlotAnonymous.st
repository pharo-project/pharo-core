testAddSlotAnonymous
	"self run: #testAddInstVarName"

	| tutu |
	tutu := Object newAnonymousSubclass.
	tutu := tutu addSlot: #x => InstanceVariableSlot.
	self assert: tutu instVarNames = #('x').
	tutu := tutu addSlot: #y => InstanceVariableSlot.
	self assert: tutu instVarNames = #('x' 'y')