groupsManager

	^ groups ifNil: [ groups := self buildGroupManager]