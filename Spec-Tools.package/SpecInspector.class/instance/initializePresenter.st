initialize
initializePresenter

	object whenChangedDo: [ :o | 
		list items: o subObjectsToInspect.
		list displayBlock: [:e :i | o displaySubObjectAt: i ].
		text doItReceiver: o.
		description text: o printString.
		self setWindowWidth ].
	
	description whenTextChanged: [ owner ifNil: [ self window ifNotNil:[ :w | w window width: self columnWidth ]]].
	
	list whenSelectedItemChanged: [:instVar |
		self focusOrder remove: extra ifAbsent: [] .
		self needRebuild: false.
		text needRebuild: false.
		list needRebuild: false.
		description needRebuild: false.
		list selectedIndex isZero
			ifTrue: [ 
				extra := nil.
				self buildWithSpec ]
			ifFalse: [
				extra := self instantiate: self class.
				extra object: instVar.
				self focusOrder add: extra.
				self buildWithSpecLayout: self specWithExtra ].
		self setWindowWidth ]