debugger access
singleRelease
	"Remove information from the receiver in order to break circularities."

	stackp == nil ifFalse: [1 to: stackp do: [:i | self at: i put: nil]].
	sender := nil.
	pc := nil.
