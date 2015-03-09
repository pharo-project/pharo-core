sendUsageData: aBoolean
	| settingsClass |
	settingsClass := #GTSpotterEventRecorderSettings asClassIfAbsent: [ ^ self ].
	^ settingsClass uniqueInstance sendUsageData: aBoolean