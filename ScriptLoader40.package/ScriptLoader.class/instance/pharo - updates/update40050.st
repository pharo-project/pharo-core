update40050
	"self new update40050"
	self withUpdateLog: '13425 Simplify API of VersionsBrowser
	https://pharo.fogbugz.com/f/cases/13425

13426 retire old VersionsBrowser
	https://pharo.fogbugz.com/f/cases/13426

'.
	self loadTogether: self script50 merge: false.
	NewVersionBrowser registerToolsOn: Smalltalk tools.
	self flushCaches.
