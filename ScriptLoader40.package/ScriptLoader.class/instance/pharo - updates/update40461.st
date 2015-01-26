update40461
	"self new update40461"
	self withUpdateLog: '14781 ManifestBuilder>>isObsoleteManifest removal
	https://pharo.fogbugz.com/f/cases/14781

14666 When doing a "implementors of" with a selector that has 1 implementor --> neverthless open method list
	https://pharo.fogbugz.com/f/cases/14666

'.
	self loadTogether: self script461 merge: false.
	self flushCaches.
self cleanRepositories.
