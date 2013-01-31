initialization
tearDown
	"Tearing down code for SpecInterpreterTest"

	specInterpreterClass resetBinding.
	specInterpreterClass := nil.
	specInterpreter := nil.