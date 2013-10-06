shortCuts
	"Answers a dictionary of the shortcuts usable in EyeInspector"

	|shortCuts|

	shortCuts := Dictionary new.
	
	shortCuts at: $i command put: [ self inspectInNewWindow: self list selectedItem value ].
	shortCuts at: $i command shift put: [ self explore: self list selectedItem value ].
	
	shortCuts at: $b command put: [ self list selectedItem browseValue ].
	shortCuts at: $h command put: [ self list selectedItem browseValueClassHierarchy ].
	shortCuts at: $c command put: [ self list selectedItem copyAccessorCode ].
	
	^shortCuts