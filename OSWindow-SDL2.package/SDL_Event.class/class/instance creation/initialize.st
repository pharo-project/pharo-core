initialize
	"self initialize"

	SDL2Types initialize.  "make sure its initialized|"

	EventTypeMap := Dictionary new.
	SDL2MappedEvent  allSubclassesDo: [ :cls |
		| eventType |
		eventType := cls eventType.
		eventType ifNotNil: [ EventTypeMap at: eventType put: cls ].
	]
