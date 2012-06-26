examples and tests
testWith

	"test progress code WITH special handling of progress notifications"

	^[ self testWithAdditionalInfo ] 
		on: ProgressInitiationException
		do: [ :ex | ex sendNotificationsTo: LoggingSystemProgressItemMorph new ].
