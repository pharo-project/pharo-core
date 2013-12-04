update30618
	"self new update30618"
	self withUpdateLog: '12327 Use eclipse icon for checklist tick
	https://pharo.fogbugz.com/f/cases/12327
	
11832 Remove SlotVirus
	https://pharo.fogbugz.com/f/cases/11832
	
12326 MailMessage class >> #dateTimeSuffix calls deprecated primSecondsClock
	https://pharo.fogbugz.com/f/cases/12326
'.
	self loadTogether: self script273 merge: false.
	self flushCaches.
