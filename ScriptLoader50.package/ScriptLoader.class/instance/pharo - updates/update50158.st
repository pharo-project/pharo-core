update50158
	"self new update50158"
	self withUpdateLog: '15906 PharoChangesCondenser broken
	https://pharo.fogbugz.com/f/cases/15906

15902 image saved notification showed on image startup
	https://pharo.fogbugz.com/f/cases/15902

15916 FastTable scrolling deltas need improving
	https://pharo.fogbugz.com/f/cases/15916

15888 use "Smalltalk tools messageList"  for "Search Code" result list
	https://pharo.fogbugz.com/f/cases/15888

15913 Reflectivity: more tests
	https://pharo.fogbugz.com/f/cases/15913

15911 Remove VariableChooserTree from Nautilus-Tree
	https://pharo.fogbugz.com/f/cases/15911'.
	self loadTogether: self script50158 merge: false.
	self loadConfiguration: 'FastTable' version: '0.7.4'.self flushCaches.
