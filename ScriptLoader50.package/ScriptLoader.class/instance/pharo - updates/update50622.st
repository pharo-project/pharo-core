update50622
	"self new update50622"
	self withUpdateLog: '17655 Changes in package loading behavior
	https://pharo.fogbugz.com/f/cases/17655

17692 ProfStef does not correctly use code font
	https://pharo.fogbugz.com/f/cases/17692'.
	self loadTogether: self script50622 merge: false.
	self loadConfiguration: 'Rubric' version: '2.9'.self flushCaches.
