localeChangedListeners
	self deprecated: 'Use Locale with announcements (see LocaleChanged)'.
	
	^LocaleChangeListeners ifNil: [LocaleChangeListeners := OrderedCollection new]