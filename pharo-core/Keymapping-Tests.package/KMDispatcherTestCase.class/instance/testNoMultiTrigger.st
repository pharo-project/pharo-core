tests
testNoMultiTrigger
	| bm1 bm2 km flag1 flag2 category otherCategory |
	category := KMCategory named: #TestBlah.
	otherCategory := KMCategory named: #TestFoo.
	KMRepository default addCategory: category.
	KMRepository default addCategory: otherCategory.
	
	KMRepository default attach: category to: BorderedMorph.
	
	bm1 := BorderedMorph new.
	flag1 := false.

	category addKeymapEntry: (KMKeymap named: #Foo shortcut: $a asShortcut, $b asShortcut, $c asShortcut action: [flag1 := true]).
	bm2 := KMMockMorph new.
	
	KMRepository default attach: otherCategory to: KMMockMorph.
	
	flag2 := false.

	otherCategory addKeymapEntry: (KMKeymap named: #Bar shortcut: $a asShortcut, $b asShortcut, $c asShortcut action: [flag2 := true]).
	bm1 addMorphBack: bm2.
	
	{self eventKey: $a. self eventKey: $b. self eventKey: $c}
		do: [:e | bm2 dispatchKeystrokeForEvent: e].
	self deny: flag1.
	self assert: flag2.