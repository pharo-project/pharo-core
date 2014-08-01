update40148
	"self new update40148"
	self withUpdateLog: '13751 OpalDecompiler missdecompile named primitives
	https://pharo.fogbugz.com/f/cases/13751

13750 OpalDecompiler raises errors in rare cases when decompiling to:do: and to:by:do:
	https://pharo.fogbugz.com/f/cases/13750

'.
	self loadTogether: self script148 merge: false.
	OpalCompiler recompileAll.
	self flushCaches.
self cleanRepositories.
