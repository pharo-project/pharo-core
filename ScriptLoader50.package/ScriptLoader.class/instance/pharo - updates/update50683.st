update50683
	"self new update50683"
	self withUpdateLog: '17985 Package and methods icon cache are references nautilus instance which shows them first time
	https://pharo.fogbugz.com/f/cases/17985

17964 Remove usage of Announcer in MultistateButtonMorph for the action to be done when clicked
	https://pharo.fogbugz.com/f/cases/17964

17986 Nautilus uses old EventManager to subscribe on historyChanged which never garbage collected
	https://pharo.fogbugz.com/f/cases/17986

17966 garbage subinstance of SystemWindow at image startup
	https://pharo.fogbugz.com/f/cases/17966

17987 RubFindReplaceService produce leak subscriptions
	https://pharo.fogbugz.com/f/cases/17987'.
	self loadTogether: self script50683 merge: false.
	self loadConfiguration: 'Rubric' version: 'stable'.self flushCaches.
