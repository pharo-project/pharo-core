update60236
	"self new update60236"
	self withUpdateLog: '19039 Optional source code annotation pane Nautilus
	https://pharo.fogbugz.com/f/cases/19039

18482 Typing a large number into a playground freezes the image
	https://pharo.fogbugz.com/f/cases/18482

19124 enhance Deprecation to log sending method 
	https://pharo.fogbugz.com/f/cases/19124

19122 Remove category from Opal
	https://pharo.fogbugz.com/f/cases/19122

18788 TxTextStyler do not work 
	https://pharo.fogbugz.com/f/cases/18788'.
	self loadTogether: self script60236 merge: false.
	self loadConfiguration: 'TxText' version: '2.12.6'.self flushCaches.
