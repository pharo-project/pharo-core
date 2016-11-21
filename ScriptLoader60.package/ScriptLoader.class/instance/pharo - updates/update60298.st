update60298
	"self new update60298"
	self withUpdateLog: '19378 Rendering text in athens is broken (still not fixed)
	https://pharo.fogbugz.com/f/cases/19378

19363 remove dependency of Rubric on SmartSuggestions
	https://pharo.fogbugz.com/f/cases/19363

19275 Installing / Uninstalling Metalinks clears method list selection
	https://pharo.fogbugz.com/f/cases/19275

19358 solve Nautilus-Versionner dependency
	https://pharo.fogbugz.com/f/cases/19358

19373 MethodFinder class>>#methodFor: should provide sorted result
	https://pharo.fogbugz.com/f/cases/19373'.
	self loadTogether: self script60298 merge: false.
	
CairoGlyph rebuildFieldAccessors.
	self flushCaches.
