selected: index
	| critic |

	(index == 0 or:
	[ pluginDelegate isNil ]) ifTrue: [ ^ self ].
	
	critic := (critics at: index).
	pluginDelegate criticSelected: critic.
	ReSystemAnnouncer uniqueInstance
		notifyCritic: critic
		clickedOnFor: entity.