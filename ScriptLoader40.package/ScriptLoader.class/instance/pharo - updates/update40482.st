update40482
	"self new update40482"
	self withUpdateLog: '14886 remove #printSlotDefinitionOn:
	https://pharo.fogbugz.com/f/cases/14886

14865 Browse full command does not display full class definition
	https://pharo.fogbugz.com/f/cases/14865'.
	self loadTogether: self script482 merge: false.
	self flushCaches.
