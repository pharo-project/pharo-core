update40532
	"self new update40532"
	self withUpdateLog: '15041 Deprecated ShadowLabelMorph
	https://pharo.fogbugz.com/f/cases/15041

15036 LabelModel>>initialize contains undeclared reference to textHolder
	https://pharo.fogbugz.com/f/cases/15036

15032 ScriptLoader does not need to log the change description
	https://pharo.fogbugz.com/f/cases/15032

15047 AthensSurface removeCacheAt: DNU
	https://pharo.fogbugz.com/f/cases/15047

15046 addInstVarNamed: fix for adding multiple vars
	https://pharo.fogbugz.com/f/cases/15046

'.
	self loadTogether: self script532 merge: false.
	self flushCaches.
self cleanRepositories.
