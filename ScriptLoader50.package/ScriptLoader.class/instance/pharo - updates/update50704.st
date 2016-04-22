update50704
	"self new update50704"
	self withUpdateLog: '16126 Removing class from Nautilus with a shortcut doesnt check for references (has conflicting shortcuts definitions)
	https://pharo.fogbugz.com/f/cases/16126

18041 "Do it" needs to be the first option on the code context menu
	https://pharo.fogbugz.com/f/cases/18041

18034 testIsPrime is broken with modern VM made with LargeIntegersPlugin v2.0
	https://pharo.fogbugz.com/f/cases/18034

18050 DNU NautilusUI >>#upArrow:
	https://pharo.fogbugz.com/f/cases/18050

18035 GZipReadStream>>unzip:to:
	https://pharo.fogbugz.com/f/cases/18035'.
	self loadTogether: self script50704 merge: false.
	self loadConfiguration: 'Rubric' version: '2.19.1'.self flushCaches.
