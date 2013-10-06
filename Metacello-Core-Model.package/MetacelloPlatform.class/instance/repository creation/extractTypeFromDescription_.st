extractTypeFromDescription: description

	description == nil ifTrue: [ ^nil ].
	((description beginsWith: '/') or: [ description second = $:]) ifTrue: [ ^'directory' ].
	(description beginsWith: 'dictionary://') ifTrue: [ ^'dictionary' ].
	^'http'