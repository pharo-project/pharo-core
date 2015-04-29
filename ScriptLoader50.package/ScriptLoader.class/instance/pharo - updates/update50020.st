update50020
	"self new update50020"
	self withUpdateLog: '15438 Update Rubric
	https://pharo.fogbugz.com/f/cases/15438

15440 remove deprecated references to #allRangesOfSubString: in TextMorphForEditView
	https://pharo.fogbugz.com/f/cases/15440'.
	self loadTogether: self script629 merge: false.
	self loadConfiguration: 'Rubric' version: '1.2.12'.self flushCaches.
