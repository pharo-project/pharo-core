update40034
	"self new update40034"
	self withUpdateLog: '13359 Pluggable* should be move out of Morpphic-Base and put in Morphic-Widgets-Pluggable
	https://pharo.fogbugz.com/f/cases/13359

'.
	self loadTogether: self script34 merge: false.
	ScriptLoader new addHomeRepositoryToAllPackages.
	self flushCaches.
