reportSettingsOn: aBuilder
	<systemsettings>

	(aBuilder group: #shoreLine)
		label: 'ShoreLine Reporter' translated;
		noOrdering.

	self reportFlagSettingsOn: aBuilder.
	self reportServerSettingsOn: aBuilder.