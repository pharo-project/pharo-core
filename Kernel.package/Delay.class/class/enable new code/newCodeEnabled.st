newCodeEnabled
	"Enable new code to be isolated during development and experimenting,
	and simulaneously switch from all old code to new code for delay scheduling."
	^ EnableNewCode ifNil: [  EnableNewCode := false ]