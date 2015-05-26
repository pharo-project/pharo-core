localeID: localeID
	self knownEnvironments at: localeID ifPresent: [:value | ^value].
	^self knownEnvironments
		at: (LocaleID isoLanguage: localeID isoLanguage)
		ifAbsent: [self localeID: (LocaleID isoLanguage: 'en')]