update50711
	"self new update50711"
	self withUpdateLog: '18067 NEC raises DNU when trying to guess "super" in TextAreas not bound to a class/Method
	https://pharo.fogbugz.com/f/cases/18067

18040 If the FreeType plugin is not in the VM, latest Pharo 5 crashes at start-up.
	https://pharo.fogbugz.com/f/cases/18040'.
	self loadTogether: self script50711 merge: false.
	self flushCaches.
