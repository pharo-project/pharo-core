halting
once
	"To enable, use self enableHaltOnce"
	
	self isHaltOnceEnabled ifTrue: [
			self disableHaltOnce.
			^ self signal]