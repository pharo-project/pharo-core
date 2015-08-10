update50217
	"self new update50217"
	self withUpdateLog: '16128 Better handling when the Pharo-window is re-sized
	https://pharo.fogbugz.com/f/cases/16128

16106 Image grows by 3.5MB for every save
	https://pharo.fogbugz.com/f/cases/16106

16135 Remove RBModifiesCollectionRule from rules run by Renraku (QualityAssistant)
	https://pharo.fogbugz.com/f/cases/16135

16120 Remove unused #importFrom: in ClassOrganization and ProtocolOrganizer
	https://pharo.fogbugz.com/f/cases/16120

16116 introduce PluggableButtonMorph with icons and PluggableToggleButtonMorph
	https://pharo.fogbugz.com/f/cases/16116'.
	self loadTogether: self script50217 merge: false.
	self loadConfiguration: 'QualityAssistant' version: 'v1.1.4'.self flushCaches.
