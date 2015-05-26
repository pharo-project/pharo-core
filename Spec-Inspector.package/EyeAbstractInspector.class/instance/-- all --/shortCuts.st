shortCuts
	"Answers a dictionary of the shortcuts usable in EyeInspector"

	|shortCuts|

	shortCuts := Dictionary new.
	
	shortCuts at: $d command put: [ self diveIntoSelectedObject ].
	
	shortCuts at: $i command put: [ self inspectSelectedObjectInNewWindow ].
	shortCuts at: $i command shift put: [ self exploreSelectedObject ].
	
	shortCuts at: $b command put: [ self browseSelectedObject ].
	shortCuts at: $h command put: [ self browseSelectedObjectClassHierarchy ].
	
	^shortCuts