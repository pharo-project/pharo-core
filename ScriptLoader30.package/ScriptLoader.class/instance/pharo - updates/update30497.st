update30497
	"self new update30497"
	self withUpdateLog: '11916 openWithDialogWindow is broken
	https://pharo.fogbugz.com/f/cases/11916
'.
	self loadTogether: self script152 merge: false.
	StandardFonts setFontsToSmall.
	self flushCaches.
