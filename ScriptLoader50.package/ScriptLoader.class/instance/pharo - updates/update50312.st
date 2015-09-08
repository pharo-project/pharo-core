update50312
	"self new update50312"
	self withUpdateLog: '16496 Provide context menu icons in Catalog browser
	https://pharo.fogbugz.com/f/cases/16496

15374 exception handling when running tests in Nautilus
	https://pharo.fogbugz.com/f/cases/15374

16511 Smalltalk saveAs should include the current image name as the initial text in the file dialogue
	https://pharo.fogbugz.com/f/cases/16511'.
	self loadTogether: self script50312 merge: false.
	self loadConfiguration: 'Catalog' version: 'stable'.self flushCaches.
