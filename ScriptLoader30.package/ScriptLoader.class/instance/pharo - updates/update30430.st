update30430
	"self new update30430"
	self withUpdateLog: '11716 Remove Spec Morphic halo
	https://pharo.fogbugz.com/f/cases/11716
	
11705 New Inspector: fix #inspect:label
	https://pharo.fogbugz.com/f/cases/11705
	
11717 changeSorter vs. dualChangeSorter
	https://pharo.fogbugz.com/f/cases/11717
	'.
	self loadTogether: self script109 merge: false.
	DualChangeSorterApplication registerToolsOn: Smalltalk tools.
Smalltalk tools remove: #dualChangeSorter.
	self flushCaches.
