update50400
	"self new update50400"
	self withUpdateLog: '16849 unimplemented call in OCCompilerASTPlugin class>>#transform:  in minimal Pharo
	https://pharo.fogbugz.com/f/cases/16849

16788 PluggableDictionary, SmallDictionary fixes and tests
	https://pharo.fogbugz.com/f/cases/16788

16853 ZipFileMember>>#uncompressDataTo: calls unimplemented message #proceed
	https://pharo.fogbugz.com/f/cases/16853

16829 Nautilus should use font size for layout
	https://pharo.fogbugz.com/f/cases/16829

'.
	self loadTogether: self script50400 merge: false.
	self flushCaches.
self cleanRepositories.
