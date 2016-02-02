update50562
	"self new update50562"
	self withUpdateLog: '17515 fix minimal Pharo shrinking build
	https://pharo.fogbugz.com/f/cases/17515

17512 Spec should use FastTable
	https://pharo.fogbugz.com/f/cases/17512

17501 ProcessTest>>testHighPriorityOverridesWaitTime intermittent failures
	https://pharo.fogbugz.com/f/cases/17501

17035 The smallSaveIcon is the same as the smallSaveAsIcon
	https://pharo.fogbugz.com/f/cases/17035'.
	self loadTogether: self script50562 merge: false.
	
ThemeIcons current loadIconsFromUrl.
	self flushCaches.
