flagging
isThisEverCalled: msg
	"Send this message, with some useful printable argument, from methods or branches of methods which you believe are never reached.  2/5/96 sw"

	Halt halt: 'This is indeed called: ', msg printString