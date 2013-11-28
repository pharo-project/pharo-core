initializeDefault
	"self initializeDefault"
	default ifNotNil: [ default unregister ].
	default := nil.
	self setDefault: self new.
	self fillUp.