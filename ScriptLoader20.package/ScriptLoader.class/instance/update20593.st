pharo - updates
update20593
	"self new update20593"
	self withUpdateLog: '10027 Failing Test: FileReferenceTest>>#testDeleteAl
	https://pharo.fogbugz.com/f/cases/10027
'.
	self loadTogether: self script567 merge: false.
	self flushCaches.
