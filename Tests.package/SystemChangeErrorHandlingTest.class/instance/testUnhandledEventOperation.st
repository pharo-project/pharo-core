Testing
testUnhandledEventOperation

	| notifier wasCaptured |
	notifier := self systemChangeNotifier.
	wasCaptured := false.
	notifier notify: self ofSystemChangesOfItem: #class change: #Added using: #storeEvent1:.
	notifier notify: self ofSystemChangesOfItem: #class change: #Added using: #storeEvent2:.
	notifier notify: self ofSystemChangesOfItem: #class change: #Added using: #zork:.
	notifier notify: self ofSystemChangesOfItem: #class change: #Added using: #storeEvent3:.
	[notifier classAdded: self class inCategory: #FooCat] on: MessageNotUnderstood do: [:exc |
		wasCaptured := true.
		self assert: (capturedEvents size = 3)].
	self assert: wasCaptured.