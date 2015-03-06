update40539
	"self new update40539"
	self withUpdateLog: '15074 Monticello Browser does not highlight packages with newer versions
	https://pharo.fogbugz.com/f/cases/15074

15075 Better icon for help book
	https://pharo.fogbugz.com/f/cases/15075

15012 MCWorkingCopy>>currentVersionInfo may raises DNU
	https://pharo.fogbugz.com/f/cases/15012'.
	self loadTogether: self script539 merge: false.
	
HelpIcons reset.
	self flushCaches.
