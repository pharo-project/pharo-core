update30820
	"self new update30820"
	self withUpdateLog: '13093 File Out save each method twice From Nautilus browser package menu or class menu
	https://pharo.fogbugz.com/f/cases/13093

'.
	self loadTogether: self script473 merge: false.
	Set rehashAllInstances.
.
	self flushCaches.
