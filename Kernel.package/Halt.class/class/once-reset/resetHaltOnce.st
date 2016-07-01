resetHaltOnce
	 #haltOnce senders do: [ :method | 
		method ast sendNodes do: [ :sendNode| 
			sendNode selector == #haltOnce ifTrue: [sendNode removeProperty: #haltOnce ifAbsent: [  ]]]].