Testing
testHaltOperation
	
	| notifier wasCaptured |
	notifier := self systemChangeNotifier.
	wasCaptured := false.
	notifier notify: self ofAllSystemChangesUsing: #storeEvent1:.
	notifier notify: self ofAllSystemChangesUsing: #storeEvent2:.
	notifier notify: self ofAllSystemChangesUsing: #handleEventWithHalt:.
	notifier notify: self ofAllSystemChangesUsing: #storeEvent3:.
	[notifier classAdded: self class inCategory: #FooCat] on: Halt do: [:exc |
		wasCaptured := true.
		self assert: (capturedEvents size = 3)].
	self assert: wasCaptured.