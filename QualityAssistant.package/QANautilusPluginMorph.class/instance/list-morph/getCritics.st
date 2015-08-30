getCritics

	entity ifNotNil: [ ReEngine uniqueInstance
								notifyCriticsSeen: critics
								of: entity ].
	^ critics