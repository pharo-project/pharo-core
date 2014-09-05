methodRemoved: aMethod protocol: protocol
	"A method with the given selector was removed from the class."

	self announce: (MethodRemoved methodRemoved: aMethod protocol: protocol origin: nil)