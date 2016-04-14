update50685
	"self new update50685"
	self withUpdateLog: '17975 #hierarchyClassTree sort by #name instead of #printString
	https://pharo.fogbugz.com/f/cases/17975

17995 load rubric 2.19
	https://pharo.fogbugz.com/f/cases/17995'.
	self loadTogether: self script50685 merge: false.
	self loadConfiguration: 'Rubric' version: '2.19'.self flushCaches.
