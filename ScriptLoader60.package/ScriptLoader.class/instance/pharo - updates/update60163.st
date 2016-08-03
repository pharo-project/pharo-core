update60163
	"self new update60163"
	self withUpdateLog: '18831 Integrate new  Epicea  version
	https://pharo.fogbugz.com/f/cases/18831

18768 Inlined method const could be implemented by metalinks
	https://pharo.fogbugz.com/f/cases/18768

18835 Update RBParser-Nodes class comments
	https://pharo.fogbugz.com/f/cases/18835'.
	self loadTogether: self script60163 merge: false.
	self loadConfiguration: 'Epicea' version: '7.97'.self flushCaches.
