addLocalChangedListener: anObjectOrClass
	self deprecated: 'Use Locale with announcements (see LocaleChanged)'.
	
	self localeChangedListeners add: anObjectOrClass