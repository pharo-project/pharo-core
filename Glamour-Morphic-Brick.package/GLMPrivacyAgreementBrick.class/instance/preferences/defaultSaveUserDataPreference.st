defaultSaveUserDataPreference
	| settingsClass |
	settingsClass := #GTSpotterEventRecorderSettings asClassIfAbsent: [ ^ '' ].
	^ settingsClass defaultSaveUserDataPreference