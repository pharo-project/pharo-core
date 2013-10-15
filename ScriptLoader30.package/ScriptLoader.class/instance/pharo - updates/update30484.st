update30484
	"self new update30484"
	self withUpdateLog: '
issue	11867: 
GrowlEnhancements so that we can see the text when Sunit is running
	https://pharo.fogbugz.com/f/cases/11867
	
issue 	11866
	More Degenerated Rectangle fixed
		https://pharo.fogbugz.com/f/cases/11866
		
issue 	11519
		Merge Color and Translucent Color (part 1)
		Just the little improvements first
		https://pharo.fogbugz.com/f/cases/11519'.
	self loadTogether: self script139 merge: false.
	self flushCaches.
