tearDown

	super tearDown.
	[ gofer metacelloUnload ]
		on: Error
		do: [ :err | "assume it is not there" ]