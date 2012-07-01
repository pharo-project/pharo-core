obsolete subclasses
removeAllObsoleteSubclasses
	"Remove all the obsolete subclasses of the receiver"
	ObsoleteSubclasses removeKey: self ifAbsent: [].
