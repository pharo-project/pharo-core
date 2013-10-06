shortCuts
	"Answers a dictionary of the shortcuts usable in EyeInspector"

	|shortCuts|

	shortCuts := Dictionary new.
	
	shortCuts at: $i command put: [ self inspectInNewWindow: list selectedItem value ].
	shortCuts at: $i command shift put: [ self explore: list selectedItem value ].
	
	shortCuts at: $b command put: [ list selectedItem browseValue ].
	shortCuts at: $h command put: [ list selectedItem browseValueClassHierarchy ].
	shortCuts at: $c command put: [ list selectedItem copyAccessorCode ].
	
	^shortCuts