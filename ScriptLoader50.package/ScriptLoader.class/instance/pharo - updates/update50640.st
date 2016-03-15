update50640
	"self new update50640"
	self withUpdateLog: '17791 RPackage-Core extends Monticello
	https://pharo.fogbugz.com/f/cases/17791

17794 MCStWriter should be able to do not write initializers
	https://pharo.fogbugz.com/f/cases/17794

17809 Can not create a subclass of TestCase
	https://pharo.fogbugz.com/f/cases/17809'.
	self loadTogether: self script50640 merge: false.
	self flushCaches.
