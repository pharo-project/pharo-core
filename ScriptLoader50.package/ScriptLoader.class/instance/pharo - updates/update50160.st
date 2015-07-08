update50160
	"self new update50160"
	self withUpdateLog: '15914 Add Manifest for the Pharo kernel
	https://pharo.fogbugz.com/f/cases/15914

15919 Disable format as you read should put back the unformatted code
	https://pharo.fogbugz.com/f/cases/15919

15917 Job can answer who is the owner
	https://pharo.fogbugz.com/f/cases/15917'.
	self loadTogether: self script50160 merge: false.
	self flushCaches.
