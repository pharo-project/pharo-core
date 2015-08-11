update50219
	"self new update50219"
	self withUpdateLog: '16138 WorldMenu->System->Settings throws DNU - Image 50217
	https://pharo.fogbugz.com/f/cases/16138

16140 Monticiellos save popup should should wrap the text.
	https://pharo.fogbugz.com/f/cases/16140'.
	self loadTogether: self script50219 merge: false.
	
BIConfigurableFormatter initialize.
	self flushCaches.
