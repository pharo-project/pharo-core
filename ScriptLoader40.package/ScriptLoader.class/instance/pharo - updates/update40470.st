update40470
	"self new update40470"
	self withUpdateLog: '14825 Correct spelling of "orginal"
	https://pharo.fogbugz.com/f/cases/14825

13215 Duration>>#asMinutes should use full precision
	https://pharo.fogbugz.com/f/cases/13215

14619 Strange behavior of TestRunner-Icon
	https://pharo.fogbugz.com/f/cases/14619

14808 Make Help file editing in Pharo 4.0 work again and ease it by using <script> pragma in generated methods
	https://pharo.fogbugz.com/f/cases/14808

'.
	self loadTogether: self script470 merge: false.
	self flushCaches.
self cleanRepositories.
