pharo - updates
update20616
	"self new update20616"
	self withUpdateLog: '10860 option click on list in TestRunner and others: freeze system
	https://pharo.fogbugz.com/f/cases/10860'.
	self loadTogether: self script589 merge: false.
	self flushCaches.
