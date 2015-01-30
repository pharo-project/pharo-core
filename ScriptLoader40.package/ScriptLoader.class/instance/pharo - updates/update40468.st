update40468
	"self new update40468"
	self withUpdateLog: '14815 NECMenuMorph should clip the canvas during menu items drawing
	https://pharo.fogbugz.com/f/cases/14815

14730 Reverting 14254
	https://pharo.fogbugz.com/f/cases/14730

'.
	self loadTogether: self script468 merge: false.
	self flushCaches.
self cleanRepositories.
