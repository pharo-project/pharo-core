update50330
	"self new update50330"
	self withUpdateLog: '16523 Nautilus Regex Search Box borken
	https://pharo.fogbugz.com/f/cases/16523

16587 Deprecate SmalltalkImage>>#logChange:
	https://pharo.fogbugz.com/f/cases/16587

16573 Monticello should not depend on System-FileRegistry
	https://pharo.fogbugz.com/f/cases/16573'.
	self loadTogether: self script50330 merge: false.
	self flushCaches.
