stepping and presenter
startSteppingIn: aWorld
	"Start getting sent the 'step' message in aWorld"

	self step.  "one to get started!"
	aWorld ifNotNil: [aWorld startStepping: self].
	self changed