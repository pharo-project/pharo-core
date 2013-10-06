allInstancesDo: aBlock 
	"Evaluate the argument, aBlock, for each of the current instances of the 
	receiver.
	
	Because aBlock might change the class of inst (for example, using become:),
	it is essential to compute next before aBlock value: inst."
	| inst next |
	inst := self someInstance.
	[inst == nil]
		whileFalse:
		[
		next := inst nextInstance.
		aBlock value: inst.
		inst := next]