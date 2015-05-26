sourceCode

	self removeSourceTextAreaLimit.
	^self selectedClass 
		ifNil: [ self defaultClassDescriptor]
		ifNotNil: [:class | self selectedMethod 
			ifNil: [ self selectedCategory 
					ifNotNil: [ 
							self putSourceTextAreaLimit.
							class sourceCodeTemplate]
					ifNil: [ self selectedClassDescription]]
			ifNotNil: [ 
					self putSourceTextAreaLimit.
					self selectedMethodSource]].
		