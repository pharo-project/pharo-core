update50234
	"self new update50234"
	self withUpdateLog: '16220 Two new rules: RBRuleIfNotEmptyDo and RBRuleIfNotNilDo
	https://pharo.fogbugz.com/f/cases/16220

16223 Property API for Globals
	https://pharo.fogbugz.com/f/cases/16223

16215 Can not get menu for list panes anymore when not using a mouse
	https://pharo.fogbugz.com/f/cases/16215

15861 Create test package for Jobs
	https://pharo.fogbugz.com/f/cases/15861'.
	self loadTogether: self script50234 merge: false.
	self loadConfiguration: 'FastTable' version: '0.7.6'.self flushCaches.
