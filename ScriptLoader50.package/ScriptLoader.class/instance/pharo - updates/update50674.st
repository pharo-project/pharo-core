update50674
	"self new update50674"
	self withUpdateLog: '17632 Can not remove classes that are referenced
	https://pharo.fogbugz.com/f/cases/17632

17923 SUnit Rules
	https://pharo.fogbugz.com/f/cases/17923

17699 Finders code pane allows to save code with invalid syntax
	https://pharo.fogbugz.com/f/cases/17699

17926 Improve Pharo Project Catalog Loading
	https://pharo.fogbugz.com/f/cases/17926

17780 "Analyzing Packages" progress should not be shown when running package critics
	https://pharo.fogbugz.com/f/cases/17780'.
	self loadTogether: self script50674 merge: false.
	self loadConfiguration: 'Catalog' version: '0.12'.
self loadConfiguration: 'DependencyAnalyser' version: '1.17'.self flushCaches.
