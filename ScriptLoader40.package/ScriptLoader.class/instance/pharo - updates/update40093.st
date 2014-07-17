update40093
	"self new update40093"
	self withUpdateLog: '13558 PluggableTextFieldMorph should be packaged in PluggableTextMorph
	https://pharo.fogbugz.com/f/cases/13558

12879 Rename and Recategorize RPackage>>#correspondingMcPackage
	https://pharo.fogbugz.com/f/cases/12879

13572 little clean of SimpleSwitchMorph and comment
	https://pharo.fogbugz.com/f/cases/13572

'.
	self loadTogether: self script93 merge: false.
	self flushCaches.
self cleanRepositories.
