update50405
	"self new update50405"
	self withUpdateLog: '16862 1px missing on Nautilus UI
	https://pharo.fogbugz.com/f/cases/16862

16864 DNU on running tests from nautilus (on non TestCase subclass)
	https://pharo.fogbugz.com/f/cases/16864

16802 MessageBrowser does not unregister itself for system announcements
	https://pharo.fogbugz.com/f/cases/16802

16869 move all messages #emphasizeScanner from Text-Core package to Text-Scanning 
	https://pharo.fogbugz.com/f/cases/16869

16868 Monticello Browser does not unregister itself for system announcements
	https://pharo.fogbugz.com/f/cases/16868'.
	self loadTogether: self script50405 merge: false.
	self flushCaches.
