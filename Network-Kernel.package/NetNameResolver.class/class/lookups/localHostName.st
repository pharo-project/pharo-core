localHostName
	"Return the local name of this host."

	"NetNameResolver localHostName"

	^ [ 
	| hostName |
	hostName := String new: self primHostNameSize.
	self primHostNameResult: hostName.
	hostName ]
		on: PrimitiveFailed
		do: [ self loopBackName ]