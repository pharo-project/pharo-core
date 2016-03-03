update50625
	"self new update50625"
	self withUpdateLog: '16422 BlueInk Formatter breaks line even with enough space
	https://pharo.fogbugz.com/f/cases/16422

17197 CheckBoxModel & RadioButtonModel desactivated* => deactivated*
	https://pharo.fogbugz.com/f/cases/17197'.
	self loadTogether: self script50625 merge: false.
	self flushCaches.
