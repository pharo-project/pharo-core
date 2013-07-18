pharo - updates
update20614
	"self new update20614"
	self withUpdateLog: '11179 Config browser buttons broken due to missing method
	https://pharo.fogbugz.com/f/cases/11179'.
	self loadTogether: self script587 merge: false.
	self flushCaches.
