tests
testFirstMouseSelector
	"firstMouseSelector is used by halos, so we test it here"

	morph eventHandler on: #doubleClick send: #value to: true.
	
	self assert: ((morph eventHandler firstMouseSelector) == #value)