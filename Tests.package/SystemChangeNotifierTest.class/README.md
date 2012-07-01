A SystemChangeNotifierTest is a test class that tests whether the triggering of changes indeed results in the intended changes to be sent to registered object. The basic mechanism for each test is fairly simple:
	- register the receiver as the one to get the change notifier.
	- manually trigger a change (so the system is not polluted just to see whether we get the needed event).
	- the method #event: is invoked and remembers the change event.
	- the change event is checked to see whether it was the intended one.

Instance Variables
	capturedEvent:		Remembers the captured event