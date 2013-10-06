validateProjectCreationFrom: aConfigurationClass onError: aBlock
	[ ^ aConfigurationClass project ]
		on: Error , MetacelloValidationNotification
		do: [ :ex | 
			(ex isKindOf: MetacelloValidationNotification)
				ifTrue: [ 
					self validationReport add: ex issue.
					ex resume ].
			^ aBlock value: ex ]