update40084
	"self new update40084"
	self withUpdateLog: '13548 Move LabelMorph, FuzzyLabelMorph and MultistateLabelMorph to the Package of StringMorph
	https://pharo.fogbugz.com/f/cases/13548

13531 RBMissingSubclassResponsibilityRule missing test cases
	https://pharo.fogbugz.com/f/cases/13531

13549 Move incrementalSliderMorph to the package of SliderMorph
	https://pharo.fogbugz.com/f/cases/13549

13547 Move LabelClicked close to its only user: CheckBoxMorph
	https://pharo.fogbugz.com/f/cases/13547

'.
	self loadTogether: self script84 merge: false.
	self flushCaches.
self cleanRepositories.
