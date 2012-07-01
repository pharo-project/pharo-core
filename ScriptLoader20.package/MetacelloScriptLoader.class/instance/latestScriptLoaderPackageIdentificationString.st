mc related utils
latestScriptLoaderPackageIdentificationString
	"ScriptLoader new latestScriptLoaderPackageIdentificationString"
	
	^  self allCurrentVersions detect: [:each | 'ScriptLoader*' match: each ]
	