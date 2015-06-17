update50118
	"self new update50118"
	self withUpdateLog: '15771 spotter dive into class from senders/implementors result list
	https://pharo.fogbugz.com/f/cases/15771

15304 LabelModel emphasis: doesnt work before the model is opened
	https://pharo.fogbugz.com/f/cases/15304

15787 Improving rubric
	https://pharo.fogbugz.com/f/cases/15787'.
	self loadTogether: self script50118 merge: false.
	self loadConfiguration: 'GTSpotter' version: '1.2.5'.
self loadConfiguration: 'Rubric' version: '1.3.5'.self flushCaches.
