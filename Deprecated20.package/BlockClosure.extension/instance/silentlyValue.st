*deprecated20
silentlyValue
	"evaluates the receiver but avoiding progress bar notifications to show up."
	self deprecated: 'dont use' on: 'Jul 2012'  in: '2.0'.
	^[ self value ] 
		on: ProgressInitiationException
		do: [ :ex | ex sendNotificationsTo: LoggingSystemProgressItemMorph new ].