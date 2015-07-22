update50182
	"self new update50182"
	self withUpdateLog: '15494 Integrate new pretty printer (Blue Ink)
	https://pharo.fogbugz.com/f/cases/15494'.
	self loadTogether: self script50182 merge: false.
	self flushCaches.
