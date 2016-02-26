update50616
	"self new update50616"
	self withUpdateLog: '17311 Versionner, MNU if we try to fix version of a package in a load directive.
	https://pharo.fogbugz.com/f/cases/17311

17703 Failing test: OCPragmaTest>>#testApicall
	https://pharo.fogbugz.com/f/cases/17703

13183 Proxy exceptions not considered by ZnClient
	https://pharo.fogbugz.com/f/cases/13183

17707 PluggableButtonMorph should respond to font: (also spec)
	https://pharo.fogbugz.com/f/cases/17707'.
	self loadTogether: self script50616 merge: false.
	self loadConfiguration: 'Versionner' version: '2.13.8'.self flushCaches.
