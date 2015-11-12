update50438
	"self new update50438"
	self withUpdateLog: '16997 Update to Catalog 0.11 (Easy loading, setting to switch of catalog spotter integration)
	https://pharo.fogbugz.com/f/cases/16997

16994 GrowlMorph position improvement
	https://pharo.fogbugz.com/f/cases/16994

16995 StandardWindow>>#flash should not block the UI thread
	https://pharo.fogbugz.com/f/cases/16995'.
	self loadTogether: self script50438 merge: false.
	self loadConfiguration: 'Catalog' version: '0.11'.self flushCaches.
