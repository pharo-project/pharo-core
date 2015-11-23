getCritics

	entity ifNotNil: [ ReSystemAnnouncer uniqueInstance
								notifyCriticsSeen: critics
								of: entity ].
	^ critics