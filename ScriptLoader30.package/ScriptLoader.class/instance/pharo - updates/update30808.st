update30808
	"self new update30808"
	self withUpdateLog: '13156 EyeInspector does not automatically refresh its list
	https://pharo.fogbugz.com/f/cases/13156

13163 Splitters move more morphs that needed
	https://pharo.fogbugz.com/f/cases/13163
'.
	self loadTogether: self script461 merge: false.
	self flushCaches.
