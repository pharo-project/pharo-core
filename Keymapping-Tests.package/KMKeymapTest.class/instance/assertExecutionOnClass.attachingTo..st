tests
assertExecutionOnClass: aClassToExecuteOn attachingTo: aClassToAttach
	| bm km flag category |
	category := (KMCategory named: #TestFoo).
	
	KMRepository default addCategory: category.
	KMRepository default attach: category to: aClassToAttach.
	
	bm := aClassToExecuteOn new.
	
	flag := false.
	category addKeymapEntry: (KMKeymap named: #Foo shortcut: $a asShortcut, $b asShortcut, $c asShortcut action: [flag := true]).
	category addKeymapEntry: (KMKeymap named: #Bar shortcut: $p asShortcut, $p asShortcut action: []).
	
	{self eventKey: $a. self eventKey: $b. self eventKey: $c}
		do: [:e | bm dispatchKeystrokeForEvent: e].
		
	self assert: flag.