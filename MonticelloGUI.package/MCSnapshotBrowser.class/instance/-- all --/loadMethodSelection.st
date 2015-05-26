loadMethodSelection
	methodSelection ifNil: [ ^self ].
	methodSelection load.