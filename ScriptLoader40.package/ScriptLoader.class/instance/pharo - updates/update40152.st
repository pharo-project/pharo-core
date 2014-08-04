update40152
	"self new update40152"
	self withUpdateLog: '13752 4 tests failing on main build due to the decompiler
	https://pharo.fogbugz.com/f/cases/13752

13766 DictionaryValueHolder>>#at:ifAbsentPut: always use a caught DNU
	https://pharo.fogbugz.com/f/cases/13766

13768 EyeInspector BasicIndexedEyeElement hash is too slow
	https://pharo.fogbugz.com/f/cases/13768'.
	self loadTogether: self script152 merge: false.
	self flushCaches.
self cleanRepositories.
