loading
loadSliceFrom: gofer
	|match slices|
	
	match := 'SLICE-Issue-', id asString.
	slices := gofer allResolved select: [ :ref| ref name beginsWith: match].
	
	slices ifEmpty: [ ^ nil ].
	
	slices size == 1 ifTrue: [ ^ slices first ].
	
	"filter out local cache repositories"
	slices := slices reject: [ :goferReference| 
		goferReference repository isKindOf: MCCacheRepository ].
	
	" get the last version "
	^ (slices sort: [ :a :b | a versionNumber >= b versionNumber ]) first