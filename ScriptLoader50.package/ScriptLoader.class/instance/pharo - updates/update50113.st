update50113
	"self new update50113"
	self withUpdateLog: '15276 radioUnselectedFormContents and radioSelectedFormContents broken in Pharo3UIThemeIcons
	https://pharo.fogbugz.com/f/cases/15276

15766 remove explicit isKindOf: PluggableTextFieldMorph in rubric
	https://pharo.fogbugz.com/f/cases/15766

15767 remove explicit isKindOf: PluggableTextFieldMorph
	https://pharo.fogbugz.com/f/cases/15767'.
	self loadTogether: self script50113 merge: false.
	self loadConfiguration: 'Rubric' version: '1.3.3'.self flushCaches.
