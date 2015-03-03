once
	"To enable, use self enableHaltOnce"
	<debuggerCompleteToSender>	
	self isHaltOnceEnabled ifTrue: [
			self disableHaltOnce.
			^ self signal]