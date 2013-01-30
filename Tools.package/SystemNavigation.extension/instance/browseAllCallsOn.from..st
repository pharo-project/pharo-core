*Tools-Browser
browseAllCallsOn: aLiteral from: aBehavior
	"Create and schedule a Message Set browser for
	 all the methods that call on aLiteral within aBehavior."

	"self new browseAllCallsOn: #/ from: Number"

	^ self browseAllSendersOf: aLiteral from: aBehavior

	