update40344
	"self new update40344"
	self withUpdateLog: '14330 rename KeyChainTest --> KeyChainTests so it gets unloaded by #cleanUpForProduction
	https://pharo.fogbugz.com/f/cases/14330

14362 Iconset is wrong
	https://pharo.fogbugz.com/f/cases/14362'.
	self loadTogether: self script344 merge: false.
	ThemeIcons uiIconClass: EclipseUIThemeIcons.
	self flushCaches.
self cleanRepositories.
