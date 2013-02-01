pharo - updates
update20449
	"self new update20449"
	self withUpdateLog: 'Issue 7164:	do not call #getSourceFromFile
	http://code.google.com/p/pharo/issues/detail?id=7164
	
Issue 7158:	Let 0.0 negated answer Float negativeZero
	http://code.google.com/p/pharo/issues/detail?id=7158
	
Issue 7122:	Undeclared NBBasicExamples
	http://code.google.com/p/pharo/issues/detail?id=7122
	
Issue 7163:	Do not use RectangleMorph
	http://code.google.com/p/pharo/issues/detail?id=7163'.
	self loadTogether: self script428 merge: false.
	self flushCaches.
