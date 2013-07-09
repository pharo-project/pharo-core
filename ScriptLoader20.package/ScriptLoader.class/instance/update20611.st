pharo - updates
update20611
	"self new update20611"
	self withUpdateLog: '10978 Backport 20: ZipArchive utf8 handling
	https://pharo.fogbugz.com/f/cases/10978
	
11125 backport 2.0: 10859 Monticello freezing the image
	https://pharo.fogbugz.com/f/cases/11125
	

'.
	self loadTogether: self script584 merge: false.
	self flushCaches.
