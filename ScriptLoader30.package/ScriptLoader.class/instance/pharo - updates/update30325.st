update30325
	"self new update30325"
	"Cleaning false dirty packages"
(MCWorkingCopy allManagers 
	select: #modified)
	do: [ :each | each modified: false ].
.
	self withUpdateLog: '11294 Bugs in refactoring when using traits
	https://pharo.fogbugz.com/f/cases/11294
'.
	self loadTogether: self script117 merge: false.
	self flushCaches.
