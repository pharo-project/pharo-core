update50423
	"self new update50423"
	self withUpdateLog: '16814 Critics Browser seriously broken
	https://pharo.fogbugz.com/f/cases/16814

16923 Improve OrderedCollection comment.
	https://pharo.fogbugz.com/f/cases/16923'.
	self loadTogether: self script50423 merge: false.
	self flushCaches.
