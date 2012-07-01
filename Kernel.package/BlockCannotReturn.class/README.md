This class is private to the EHS implementation.  Its use allows for ensured execution to survive code such as:

[self doThis.
^nil]
	ensure: [self doThat]

Signaling or handling this exception is not recommended.