update40022
	"self new update40022"
	self withUpdateLog: '12860 valueOfProperty: #fileListModel.
	https://pharo.fogbugz.com/f/cases/12860

13326 Gofer: Add loadBleedingEdge
	https://pharo.fogbugz.com/f/cases/13326

13330 Small code critique cleanup in Tools
	https://pharo.fogbugz.com/f/cases/13330

'.
	self loadTogether: self script22 merge: false.
	self flushCaches.
