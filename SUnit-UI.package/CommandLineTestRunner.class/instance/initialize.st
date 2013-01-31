initialize-release
initialize
	super initialize.
	shouldSerializeError := false.
	stderr := VTermOutputDriver stderr.
	stdout := VTermOutputDriver stdout.