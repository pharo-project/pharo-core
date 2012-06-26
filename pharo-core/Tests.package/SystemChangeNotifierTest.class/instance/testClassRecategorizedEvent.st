Testing-system triggers
testClassRecategorizedEvent

	self systemChangeNotifier notify: self ofAllSystemChangesUsing: #event:.
	self systemChangeNotifier 
		class: self class
		recategorizedFrom: #FooCat
		to: #FooBar.
	self
		checkEventForClass: self class
		category: #FooBar
		change: #Recategorized.
	self assert: capturedEvent oldCategory = #FooCat