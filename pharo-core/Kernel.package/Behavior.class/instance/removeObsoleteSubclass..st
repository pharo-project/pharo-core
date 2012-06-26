obsolete subclasses
removeObsoleteSubclass: aClass
	"Remove aClass from the weakly remembered obsolete subclasses"
	| obs |
	obs := ObsoleteSubclasses at: self ifAbsent:[^ self].
	(obs includes: aClass) ifFalse:[^self].
	obs := obs copyWithout: aClass.
	obs := obs copyWithout: nil.
	ObsoleteSubclasses at: self put: obs