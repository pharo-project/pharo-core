initialize-release
obsolete
	"Make the receiver obsolete."
	superclass removeSubclass: self.
	self organization: nil.
	super obsolete.