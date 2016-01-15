update50528
	"self new update50528"
	
OSEnvironment shutDown: true; initialize.
	self withUpdateLog: '17388 OSEnvironment current returns Unix environment on Windows
	https://pharo.fogbugz.com/f/cases/17388

17201 Marking Diffs broken in Pharo5
	https://pharo.fogbugz.com/f/cases/17201

16488 Dropping a class from one browser to another package in another browser updates selected package+class in both 
	https://pharo.fogbugz.com/f/cases/16488

17207 Spec (Toolbar)Menu buttons shouldnt look active by default
	https://pharo.fogbugz.com/f/cases/17207'.
	self loadTogether: self script50528 merge: false.
	self flushCaches.
