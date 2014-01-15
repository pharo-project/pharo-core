update30698
	"self new update30698"
	self withUpdateLog: '11120 Browse code files in FileBrowser not working
	https://pharo.fogbugz.com/f/cases/11120
	
12653 MetacelloConfigTemplate is wrong
	https://pharo.fogbugz.com/f/cases/12653
	
12589 Nautilus: Package file-outs are empty
	https://pharo.fogbugz.com/f/cases/12589
	'.
	self loadTogether: self script351 merge: false.
	self flushCaches.
