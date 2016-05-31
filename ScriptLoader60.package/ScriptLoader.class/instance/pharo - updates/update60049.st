update60049
	"self new update60049"
	self withUpdateLog: '18350 Lost changes should be shown on startup by Epicea
	https://pharo.fogbugz.com/f/cases/18350

17822 Use STON for JSON parsing in MC FileTree
	https://pharo.fogbugz.com/f/cases/17822

18357 Update Rubric to 2.19.4
	https://pharo.fogbugz.com/f/cases/18357'.
	self loadTogether: self script60049 merge: false.
	self flushCaches.
