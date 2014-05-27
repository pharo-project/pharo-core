saveLatestScriptLoaderToHome
	"self new saveLatestScriptLoaderToHome"

	| man r |
	man := self allManagers.
	r := man select: [:each | 'ScriptLoader*' match: each  package name].
	self repository storeVersion: (r first newVersionIn: self repository).