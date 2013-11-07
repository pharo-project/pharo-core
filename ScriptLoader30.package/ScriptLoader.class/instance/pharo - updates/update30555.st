update30555
	"self new update30555"
	self withUpdateLog: '- Issue 11222:
	Date readFrom:pattern: (year 2 decimals not 20xx but 00xx)
	https://pharo.fogbugz.com/f/cases/11222
	
- Issue 12101: 
	Selecting a package in the Monticello browser
	https://pharo.fogbugz.com/f/cases/12101
	
- Issue 12095: 
	Behavior of image save inconsistent with regards to file extension
	https://pharo.fogbugz.com/f/cases/12095'.
	self loadTogether: self script211 merge: false.
	self flushCaches.
