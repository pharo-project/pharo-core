update40443
	"self new update40443"
	self withUpdateLog: '6859 Finder not refreshing for new packages/classes
	https://pharo.fogbugz.com/f/cases/6859

14728 NBFFICalloutAPI option WinUnicode is not prefixed with opt, as all the other options
	https://pharo.fogbugz.com/f/cases/14728'.
	self loadTogether: self script443 merge: false.
	self flushCaches.
