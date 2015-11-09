update50426
	"self new update50426"
	self withUpdateLog: '16932 Rename NewVersionBrowser
	https://pharo.fogbugz.com/f/cases/16932

16951 criticbrowsers syntaxhighlight broken
	https://pharo.fogbugz.com/f/cases/16951

16949 SystemWindow activation refactoring
	https://pharo.fogbugz.com/f/cases/16949'.
	self loadTogether: self script50426 merge: false.
	
PharoCommonTools allInstancesDo:#cleanUp.
'VersionBrowser' asClass registerToolsOn: Smalltalk tools.
.
	self flushCaches.
