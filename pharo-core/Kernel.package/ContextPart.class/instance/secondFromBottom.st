query
secondFromBottom
	"Return the second from bottom of my sender chain"

	self sender ifNil: [^ nil].
	^ self findContextSuchThat: [:c | c sender sender isNil]