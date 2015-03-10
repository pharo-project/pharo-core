update40547
	"self new update40547"
	self withUpdateLog: '14545 Replace users by traitUsers in senders
	https://pharo.fogbugz.com/f/cases/14545

15066 InputWidget and DateModel should use #label: instead of deprecated #text:
	https://pharo.fogbugz.com/f/cases/15066

15078 SearchableTree>>initializeWidgets use LabelModel>>text: which is deprecated
	https://pharo.fogbugz.com/f/cases/15078

15096 when choosing a directory default should be current
	https://pharo.fogbugz.com/f/cases/15096'.
	self loadTogether: self script547 merge: false.
	self flushCaches.
