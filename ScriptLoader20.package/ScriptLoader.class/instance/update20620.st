pharo - updates
update20620
	"self new update20620"
	self withUpdateLog: '11217 backport 20 No timestamp in MCMethodDefinition>>=
	https://pharo.fogbugz.com/f/cases/11217
	
11624 backport Pharo2: Add missing asLayoutFrame in Browser openAsMorphClassEditing:
	https://pharo.fogbugz.com/f/cases/11624
	
11662 Pharo 2.0 20619: Undeclared
	https://pharo.fogbugz.com/f/cases/11662'.
	self loadTogether: self script593 merge: false.
	Smalltalk cleanOutUndeclared.
	self flushCaches.
