update40216
	"self new update40216"
	self withUpdateLog: '13979 PragmaMenuBuilder relies on modifying a collection while iterating over it.
	https://pharo.fogbugz.com/f/cases/13979

13983 Temporary variables not read AND written in LinkedList
	https://pharo.fogbugz.com/f/cases/13983

13984 Temporary variables not read and written in ByteString class>>#initialize
	https://pharo.fogbugz.com/f/cases/13984

'.
	self loadTogether: self script216 merge: false.
	self flushCaches.
self cleanRepositories.
