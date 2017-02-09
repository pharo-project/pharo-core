preferences
	^ preferences ifNil: [ preferences := self defaultPreferences ]