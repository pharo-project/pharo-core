update40007
	"self new update40007"
	self withUpdateLog: '13257 Pointless class creation menu in Nautilus
	https://pharo.fogbugz.com/f/cases/13257

- add 30Inbox (to be removed later)'.
	self loadTogether: self script6 merge: false.
	ScriptLoader new addHomeRepositoryToAllPackages.
.
	self flushCaches.
