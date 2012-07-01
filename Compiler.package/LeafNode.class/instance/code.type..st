private
code: index type: type

	index isNil 
		ifTrue: [^type negated].
	(CodeLimits at: type) > index 
		ifTrue: [^(CodeBases at: type) + index].
	^type * 256 + index