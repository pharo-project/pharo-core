Testing-system triggers
testClassRenamedEvent
	"self run: #testClassRenamedEvent"

	self systemChangeNotifier notify: self ofAllSystemChangesUsing: #event:.
	self systemChangeNotifier 
		classRenamed: self class
		from: #OldFooClass
		to: #NewFooClass
		inCategory: #FooCat.
	self
		checkEventForClass: self class
		category: #FooCat
		change: #Renamed.
"	self assert: capturedEvent oldName = #OldFooClass.
	self assert: capturedEvent newName = #NewFooClass"