update50526
	"self new update50526"
	self withUpdateLog: '17125 Metadata-less compatibility with FileTree
	https://pharo.fogbugz.com/f/cases/17125

17363 (LayoutFrame fractions: (0 @ 0 corner: 1 @ 1)) = LayoutFrame identity should be true and it is not.
	https://pharo.fogbugz.com/f/cases/17363

17380 OrderedDictionary and OrderedDictionaryTest refactoring
	https://pharo.fogbugz.com/f/cases/17380'.
	self loadTogether: self script50526 merge: false.
	self flushCaches.
