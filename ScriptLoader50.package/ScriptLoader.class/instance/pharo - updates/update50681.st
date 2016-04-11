update50681
	"self new update50681"
	self withUpdateLog: '17284 Rubric SubscriptOutOfBounds error
	https://pharo.fogbugz.com/f/cases/17284

17972 Remove depended in MorphTreeNodeMorph on deletion
	https://pharo.fogbugz.com/f/cases/17972

17968 a window should not be the top window after its deletion
	https://pharo.fogbugz.com/f/cases/17968'.
	self loadTogether: self script50681 merge: false.
	self loadConfiguration: 'Rubric' version: 'stable'.self flushCaches.
