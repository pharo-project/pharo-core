update40254
	"self new update40254"
	self withUpdateLog: '14071 OSWindow integration part1
	https://pharo.fogbugz.com/f/cases/14071'.
	self loadTogether: self script254 merge: false.
	self loadConfiguration: 'OSWindow' version: '1.1.1'.
NativeBoost prepareForProduction.
	self flushCaches.
