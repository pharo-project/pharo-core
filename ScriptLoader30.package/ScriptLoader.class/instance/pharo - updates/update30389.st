update30389
	"self new update30389"
	self withUpdateLog: '11559 Move TranslucentPattern and Highlights from Color to its users
	https://pharo.fogbugz.com/f/cases/11559
	
11558 Color>>makeForegroundColor should be called #contrastringForegroundColor
	https://pharo.fogbugz.com/f/cases/11558
	
11576 ThisContext inspector in debugger shows incorrect label
	https://pharo.fogbugz.com/f/cases/11576
	'.
	self loadTogether: self script181 merge: false.
	self flushCaches.
