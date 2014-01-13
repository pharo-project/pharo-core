initialize

	super initialize.

	actionHolder := [] asValueHolder.
	labelHolder := '' asValueHolder.
	iconHolder := nil asValueHolder.
	stateHolder := false asValueHolder.
	helpHolder := nil asValueHolder.
	actionPerformedHolder := nil asValueHolder.
	askBeforeChangingHolder := false asValueHolder.
	shortcut := nil asValueHolder.
	
	labelHolder whenChangedDo: [ self changed: #label ].
	iconHolder whenChangedDo: [ self changed: #label ].
	stateHolder whenChangedDo: [ self changed: #state ].
	enabledHolder whenChangedDo: [ self changed: #enabled ].
	askBeforeChangingHolder whenChangedDo: [:newValue | self changed: { #askBeforeChanging: . newValue} ].
	shortcut whenChangedDo: [ :newShortcut :oldShortcut |
		self unregisterShortcut: oldShortcut.
		self registerShortcut: newShortcut.
		self changed: #label ].
	
	menuHolder := MenuModel new asValueHolder.	
	menuHolder whenChangedDo: [ :aMenuModel :oldMenu | 
		(oldMenu isNil or: [ oldMenu isBlock ]) ifFalse: [ oldMenu neglect: self ].
		(aMenuModel isNil or: [ aMenuModel isBlock ]) ifFalse: [ aMenuModel applyTo: self ] ].
		
	self bindKeyCombination: Character space toAction: [ self action ].