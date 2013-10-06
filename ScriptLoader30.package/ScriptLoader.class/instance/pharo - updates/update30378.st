update30378
	"self new update30378"
	World closeAllWindowsDiscardingChanges. 
SystemProgressMorph disable.
.
	self withUpdateLog: '11509 Working on MorphMargin
	https://pharo.fogbugz.com/f/cases/11509'.
	self loadTogether: self script170 merge: false.
	SystemProgressMorph enable.
ProgressBarMorph compileAll.
	self flushCaches.
