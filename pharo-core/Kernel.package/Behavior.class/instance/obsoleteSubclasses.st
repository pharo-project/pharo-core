obsolete subclasses
obsoleteSubclasses
	"Return all the weakly remembered obsolete subclasses of the receiver"
	| obs |
	obs := ObsoleteSubclasses at: self ifAbsent: [^ #()].
	^ obs copyWithout: nil