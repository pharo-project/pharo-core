initialize

	super initialize.

	actionHolder := [] asReactiveVariable.
	labelHolder := '' asReactiveVariable.
	iconHolder := nil asReactiveVariable.
	stateHolder := false asReactiveVariable.
	helpHolder := nil asReactiveVariable.
	actionPerformedHolder := nil asReactiveVariable.
	askBeforeChangingHolder := false asReactiveVariable.
	shortcut := nil asReactiveVariable.
	
	labelHolder whenChangedDo: [ self changed: #label ].
	iconHolder whenChangedDo: [ self changed: #label ].
	stateHolder whenChangedDo: [ self changed: #state ].
	enabledHolder whenChangedDo: [ self changed: #enabled ].
	askBeforeChangingHolder whenChangedDo: [:newValue | self changed: { #askBeforeChanging: . newValue} ].
	shortcut whenChangedDo: [ :newShortcut :oldShortcut |
		self unregisterShortcut: oldShortcut.
		self registerShortcut: newShortcut.
		self changed: #label ].
	
	menuHolder := MenuModel new asReactiveVariable.	
	menuHolder whenChangedDo: [ :aMenuModel :oldMenu | 
		(oldMenu isNil or: [ oldMenu isBlock ]) ifFalse: [ oldMenu neglect: self ].
		(aMenuModel isNil or: [ aMenuModel isBlock ]) ifFalse: [ aMenuModel applyTo: self ] ].
		
	self bindKeyCombination: Character space toAction: [ self action ].