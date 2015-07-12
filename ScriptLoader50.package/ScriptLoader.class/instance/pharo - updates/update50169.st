update50169
	"self new update50169"
	self withUpdateLog: '15956 Temporary variable oldNeg is only written in NumberParser>>#nextInteger
	https://pharo.fogbugz.com/f/cases/15956

15952 Update configuration of Rubric 
	https://pharo.fogbugz.com/f/cases/15952

15953 Replace PluggableTextMorph of the Finder
	https://pharo.fogbugz.com/f/cases/15953

15954 Replace PluggableTextMorph of the HelpBrowser 
	https://pharo.fogbugz.com/f/cases/15954'.
	self loadTogether: self script50169 merge: false.
	self loadConfiguration: 'Rubric' version: '1.13'.self flushCaches.
