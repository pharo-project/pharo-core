update60294
	"self new update60294"
	self withUpdateLog: '19347 SettingBrowser>>#settingsKeywords uses #selector instead of #keyword in Pragma access
	https://pharo.fogbugz.com/f/cases/19347

19345 revert FBDDecompiler>>#pragmasForMethod:
	https://pharo.fogbugz.com/f/cases/19345

'.
	self loadTogether: self script60294 merge: false.
	self flushCaches.
self cleanRepositories.
