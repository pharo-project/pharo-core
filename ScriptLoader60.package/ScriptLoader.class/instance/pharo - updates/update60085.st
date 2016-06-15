update60085
	"self new update60085"
	self withUpdateLog: '18492 safer access to charset
	https://pharo.fogbugz.com/f/cases/18492

15085 non-english character input
	https://pharo.fogbugz.com/f/cases/15085

18485 TabsExample broken (icon access)
	https://pharo.fogbugz.com/f/cases/18485

18490 Configuration of TxText needs update stable version
	https://pharo.fogbugz.com/f/cases/18490'.
	self loadTogether: self script60085 merge: false.
	self loadConfiguration: 'TxText' version: '2.12.4'.self flushCaches.
