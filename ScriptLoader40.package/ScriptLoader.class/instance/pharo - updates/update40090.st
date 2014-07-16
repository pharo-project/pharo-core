update40090
	"self new update40090"
	self withUpdateLog: '13569 Small Code critique cleanup of MonticelloGUI
	https://pharo.fogbugz.com/f/cases/13569

13567 Small code critique clean Polymorph
	https://pharo.fogbugz.com/f/cases/13567

12205 Cleanup gofer>>#directory:
	https://pharo.fogbugz.com/f/cases/12205

13125 The Find&Replace dialog does not honor the Appearance font size setting
	https://pharo.fogbugz.com/f/cases/13125

'.
	self loadTogether: self script90 merge: false.
	self flushCaches.
self cleanRepositories.
