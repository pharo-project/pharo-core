loadPreferences
	"self loadPreferences"
	| dictionary newInstance |
	self preferences exists ifFalse: [ 
		"This is a new computer, so we define new computer UUID.
		User still has to agree about sending data if it is not has been done yet."
		^ self savePreferences ].
	[ 
		dictionary := FLMaterializer materializeFromFileNamed: self preferences.
		newInstance := self new dictionary: dictionary.
		"If UUIDs are different, it is likely different user and we should use
		localy stored settings. If the UUIDs are same, we keep settings of the image."
		newInstance computerUUID = self uniqueInstance computerUUID
			ifFalse: [ uniqueInstance := newInstance ]
			ifTrue: [ self uniqueInstance secretUUID: newInstance secretUUID ].
		self saveMissingAttributes: self uniqueInstance dictionary comparingWithOld: dictionary.
	] on: Error do: [ 
		"Preferences likely contains a different settings version, so we store the actual one.
		We should keep the preferences as stable as possible."
		self savePreferences ]