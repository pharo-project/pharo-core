update50138
	"self new update50138"
	self withUpdateLog: '15846 Monticello cleaning and repackaging
	https://pharo.fogbugz.com/f/cases/15846

15848 Update Rubric support for temporaries addition
	https://pharo.fogbugz.com/f/cases/15848

15835 enable use of experimental fast table for Nautilus
	https://pharo.fogbugz.com/f/cases/15835'.
	self loadTogether: self script50138 merge: false.
	self loadConfiguration: 'Rubric' version: '1.5'.self flushCaches.
