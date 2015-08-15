update50232
	"self new update50232"
	self withUpdateLog: '16133 repackage blue ink in blue project
	https://pharo.fogbugz.com/f/cases/16133

16213 Update Configuration of Rubric
	https://pharo.fogbugz.com/f/cases/16213

15279 Nautilus: Rename Package needs to copy over defined Monticello repositories
	https://pharo.fogbugz.com/f/cases/15279'.
	self loadTogether: self script50232 merge: false.
	self loadConfiguration: 'Rubric' version: '1.18'.self flushCaches.
