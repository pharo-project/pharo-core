update50589
	"self new update50589"
	
(TBehavior>>#ban:) recompile.
Symbol resetSelectorTable; selectorTable .
	self withUpdateLog: '17511 Inline temporary smart suggestion crashes
	https://pharo.fogbugz.com/f/cases/17511

17606 Zn Update Februari 2016
	https://pharo.fogbugz.com/f/cases/17606

17015 Failing test: SetTest>>#testAllSetsAreHealthy
	https://pharo.fogbugz.com/f/cases/17015

17590 Textmenu in Finder code pane does not work.
	https://pharo.fogbugz.com/f/cases/17590'.
	self loadTogether: self script50589 merge: false.
	self loadConfiguration: 'ZincHTTPComponents' version: '2.7.0'.self flushCaches.
