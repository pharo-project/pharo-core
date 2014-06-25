update40039
	"self new update40039"
	self withUpdateLog: '13348 Display progress when running lint rules
	https://pharo.fogbugz.com/f/cases/13348

13391 add #visibleSlots to layout
	https://pharo.fogbugz.com/f/cases/13391

'.
	self loadTogether: self script39 merge: false.
	self flushCaches.
