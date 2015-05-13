update50045
	"self new update50045"
	self withUpdateLog: '15525 cleanup from issue 13065
	https://pharo.fogbugz.com/f/cases/15525

15531 Fix typo in method comment in Object>>newFrom:
	https://pharo.fogbugz.com/f/cases/15531

15533 Uppercase button title for Code when selecting an st file in FileList
	https://pharo.fogbugz.com/f/cases/15533

15529 add Character space to the special km single Keycombination class
	https://pharo.fogbugz.com/f/cases/15529'.
	self loadTogether: self script50045 merge: false.
	
KMRepository reset.
	self flushCaches.
