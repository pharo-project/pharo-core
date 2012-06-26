signaling
signalFor: aSelector in: aReceiver
	"Create and signal an exception for aSelector in aReceiver."

	^ self new
		object: aSelector;
		signaler: aReceiver;
		signal