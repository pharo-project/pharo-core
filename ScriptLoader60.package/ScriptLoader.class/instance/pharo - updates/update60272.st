update60272
	"self new update60272"
	self withUpdateLog: '19255 Update TxText
	https://pharo.fogbugz.com/f/cases/19255

19258 Remove isParagraphProvider
	https://pharo.fogbugz.com/f/cases/19258

19084 SmalllintManifestCheckerTest: failing tests
	https://pharo.fogbugz.com/f/cases/19084

19253 Methods to check is variable, global or slot is read or modified in given CompiledCode
	https://pharo.fogbugz.com/f/cases/19253

19261 Enable <example> methods to be executed
	https://pharo.fogbugz.com/f/cases/19261'.
	self loadTogether: self script60272 merge: false.
	self loadConfiguration: 'TxText' version: '2.13'.self flushCaches.
