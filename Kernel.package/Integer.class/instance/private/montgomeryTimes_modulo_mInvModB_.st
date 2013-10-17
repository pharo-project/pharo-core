montgomeryTimes: a modulo: m mInvModB: mInv
	"Answer the result of a Montgomery multiplication
	self * a * (256 raisedTo: m digitLength) inv \\ m
	NOTE: it is assumed that:
	self digitLength <= m digitLength
	a digitLength <= m digitLength
	mInv * m \\ 256 = (-1 \\ 256) = 255 (this implies m odd)
	
	Answer nil in case of absent plugin or other failure."
	
	<primitive: 'primMontgomeryTimesModulo' module:'LargeIntegers'>
	^nil