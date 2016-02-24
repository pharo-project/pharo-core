update50604
	"self new update50604"
	self withUpdateLog: '17540 Remove an empty protocol in hierarchy unselect the class
	https://pharo.fogbugz.com/f/cases/17540

17681 Executing code inside process browser not working
	https://pharo.fogbugz.com/f/cases/17681

17524 Invisible protocol icons
	https://pharo.fogbugz.com/f/cases/17524'.
	self loadTogether: self script50604 merge: false.
	self flushCaches.
