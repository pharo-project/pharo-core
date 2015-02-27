update40520
	"self new update40520"
	self withUpdateLog: '14993 Integrate GTools
	https://pharo.fogbugz.com/f/cases/14993'.
	self loadTogether: self script520 merge: false.
	self loadConfiguration: 'GToolkitCore' version: 'development'.self flushCaches.
