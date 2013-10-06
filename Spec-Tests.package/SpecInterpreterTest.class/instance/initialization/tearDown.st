tearDown
	"Tearing down code for SpecInterpreterTest"

	specInterpreterClass resetBindings.
	specInterpreterClass := nil.
	specInterpreter := nil.