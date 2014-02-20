update30775
	"self new update30775"
	self withUpdateLog: '12939 Class comments missing for Announcements-Tests package
	https://pharo.fogbugz.com/f/cases/12939

12928 Spec new update
	https://pharo.fogbugz.com/f/cases/12928

12937 Class comments missing in Versionner package
	https://pharo.fogbugz.com/f/cases/12937

12940 Class comments missing for CollectionsTests package
	https://pharo.fogbugz.com/f/cases/12940

12943 Class comments missing for Monticello- packages
	https://pharo.fogbugz.com/f/cases/12943

'.
	self loadTogether: self script428 merge: false.
	self flushCaches.
