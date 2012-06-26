Event Notifications
event: event
	"The notification message being sent to me when an event is captured. Remember it."

"	capturedEvent isNil ifTrue: [	self capturedEvent: event] ifFalse: [self assert: false]"

	self capturedEvent: event