update30390
	"self new update30390"
	self withUpdateLog: '10633 SettingsBrowser is *extremely* slow
	https://pharo.fogbugz.com/f/cases/10633
	
11580 PharoUsers>>#initialize should not set gravatar
	https://pharo.fogbugz.com/f/cases/11580
	
11577 Undeclared Variables: HighLightBitmaps->nil #TranslucentPatterns->nil
	https://pharo.fogbugz.com/f/cases/11577
	'.
	self loadTogether: self script182 merge: false.
	self flushCaches.
