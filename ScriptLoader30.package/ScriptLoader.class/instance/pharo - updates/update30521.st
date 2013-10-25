update30521
	"self new update30521"
	self withUpdateLog: '11995 MenuMorph>>addList: sends #iconNamed: to an instance of Pharo3Theme, which raises a warning of deprecation.
	https://pharo.fogbugz.com/f/cases/11995
	
#localSelectors add to Trait so cleanup is possible in a second step'.
	self loadTogether: self script176 merge: false.
	self flushCaches.
