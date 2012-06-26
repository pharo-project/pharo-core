dependencies
externalSubclasses
	| pkgClasses subClasses |
	pkgClasses := self classes.
	subClasses := Set new.
	pkgClasses do: [:c | subClasses addAll: (c allSubclasses)].
	^ subClasses difference: pkgClasses
