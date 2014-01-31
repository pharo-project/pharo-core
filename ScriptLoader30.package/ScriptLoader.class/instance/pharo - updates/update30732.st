update30732
	"self new update30732"
	self withUpdateLog: '12757 #cleanUpForProduction should not unload Deprecated and Jenkins
	https://pharo.fogbugz.com/f/cases/12757

12755 Licensestring still shows 2013 instead of current year
	https://pharo.fogbugz.com/f/cases/12755

12734 Nautilus accept changes shows prompt for cancel dialog
	https://pharo.fogbugz.com/f/cases/12734

12764 Class comments missing in Text package
	https://pharo.fogbugz.com/f/cases/12764

12752 Non-Empty list of pooldictionaries is still cut from the class description in Nautilus
	https://pharo.fogbugz.com/f/cases/12752

'.
	self loadTogether: self script385 merge: false.
	self flushCaches.
