sourceCode

	self removeSourceTextAreaLimit.
	^self selectedClass 
		ifNil: [ self defaultClassDescriptor]
		ifNotNil: [ self selectedMethod 
			ifNil: [ self selectedCategory 
					ifNotNil: [ 
							self putSourceTextAreaLimit.
							self defaultMethodSource]
					ifNil: [ self selectedClassDescription]]
			ifNotNil: [ 
					self putSourceTextAreaLimit.
					self selectedMethodSource]].
		