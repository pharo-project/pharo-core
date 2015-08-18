update50244
	"self new update50244"
	self withUpdateLog: '16099 Failing tests in  MCSnapshotBrowserTest
	https://pharo.fogbugz.com/f/cases/16099

16257 Use Rubric in description area of Nautilus Plugin Manager
	https://pharo.fogbugz.com/f/cases/16257

16260 Compression should not depend on Tool-Base
	https://pharo.fogbugz.com/f/cases/16260'.
	self loadTogether: self script50244 merge: false.
	self flushCaches.
