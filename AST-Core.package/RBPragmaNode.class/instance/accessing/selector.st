selector
	^ selector ifNil: [ selector := self buildSelector ]