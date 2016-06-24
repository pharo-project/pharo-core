update60112
	"self new update60112"
	self withUpdateLog: '18597 fix haltOnce to open debugger in the right place
	https://pharo.fogbugz.com/f/cases/18597

18539 Can not browse methods for a change set that modified class comments
	https://pharo.fogbugz.com/f/cases/18539

18073 TxModel >>#postCopy sends #halt
	https://pharo.fogbugz.com/f/cases/18073'.
	self loadTogether: self script60112 merge: false.
	self loadConfiguration: 'TxText' version: '2.12.5'.self flushCaches.
