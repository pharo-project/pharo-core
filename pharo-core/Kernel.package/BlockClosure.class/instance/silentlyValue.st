evaluating
silentlyValue
	"evaluates the receiver but avoiding progress bar notifications to show up."
	
	^[ self value ] 
		on: ProgressInitiationException
		do: [ :ex | ex sendNotificationsTo: LoggingSystemProgressItemMorph new ].