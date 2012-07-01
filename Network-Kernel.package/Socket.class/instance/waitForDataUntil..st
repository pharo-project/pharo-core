deprecated-ROLL OVER BUG
waitForDataUntil: deadline
	"Wait up until the given deadline for data to arrive. Return true if data arrives by the deadline, false if not."
	self waitForDataUntil: deadline ifClosed: [^ false] ifTimedOut: [^ false].
	^ true