pharo - updates
update20613
	"self new update20613"
	self withUpdateLog: '11132 Backport to 2.0: Convert MetacelloConfigurationBrowser to Spec
	https://pharo.fogbugz.com/f/cases/11132'.
	self loadTogether: self script586 merge: false.
	self flushCaches.
