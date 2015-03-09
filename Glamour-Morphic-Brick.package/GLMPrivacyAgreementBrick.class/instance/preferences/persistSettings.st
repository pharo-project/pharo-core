persistSettings
	| settingsClass |
	settingsClass := #GTSpotterEventRecorderSettings asClassIfAbsent: [ ^ false ].
	^ settingsClass uniqueInstance persistSettings