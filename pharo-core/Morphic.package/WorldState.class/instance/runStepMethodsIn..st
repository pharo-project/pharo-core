stepping
runStepMethodsIn: aWorld
	"Perform periodic activity inbetween event cycles"
	
	| queue nextInQueue|
	"If available dispatch some deferred UI Message"
	queue := self class deferredUIMessages.
	[(nextInQueue := queue nextOrNil) isNil]
		whileFalse: [ nextInQueue value].
	self runLocalStepMethodsIn: aWorld.