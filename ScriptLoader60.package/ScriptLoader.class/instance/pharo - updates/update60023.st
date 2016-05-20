update60023
	"self new update60023"
	self withUpdateLog: '18240 PluggableButtonMorph does not update his text color on themeChanged
	https://pharo.fogbugz.com/f/cases/18240

18276 Update glamorousBrowse and testRunner icons
	https://pharo.fogbugz.com/f/cases/18276'.
	self loadTogether: self script60023 merge: false.
	
ThemeIcons current: ThemeIcons loadDefault.
	self flushCaches.
