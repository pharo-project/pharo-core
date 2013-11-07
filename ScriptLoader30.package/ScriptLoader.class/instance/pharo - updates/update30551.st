update30551
	"self new update30551"
	self withUpdateLog: '- Issue 12088: Show the package in the senders and implementors window
	https://pharo.fogbugz.com/f/cases/12088/
	
- Issue 12060:
	The Quit menu entry is not asking for a confirmation anymore?
	https://pharo.fogbugz.com/f/cases/12060/
	Smalltalk tools userManager currentUser permissions canSaveImage:  true
	
- Issue 12079:	
	HDTestReport improvements
	https://pharo.fogbugz.com/f/cases/12079/'.
	self loadTogether: self script206 merge: false.
	Smalltalk tools userManager currentUser permissions canSaveImage:  true.
	self flushCaches.
