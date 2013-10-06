update30386
	"self new update30386"
	self withUpdateLog: '11563 Color>>pixelValue32 should be moved to its single sender
	https://pharo.fogbugz.com/f/cases/11563
	
11561 Leftover System Progress morph
	https://pharo.fogbugz.com/f/cases/11561
	'.
	self loadTogether: self script178 merge: false.
	SystemProgressMorph reset.
.
	self flushCaches.
