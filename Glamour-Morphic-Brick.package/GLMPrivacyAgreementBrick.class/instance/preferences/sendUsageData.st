sendUsageData
	| settingsClass |
	settingsClass := #GTSpotterEventRecorderSettings asClassIfAbsent: [ ^ false ].
	^ settingsClass uniqueInstance sendUsageData