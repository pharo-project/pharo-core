fileEntryAt: pathSegment ifAbsent: absentBlock
	pathSegment = #class
		ifTrue: [ ^ self theMetaClass organization ].
	pathSegment = #instance
		ifTrue: [ ^ self organization ].
	pathSegment = ClassCommentEntry basicBasename
		ifTrue: [ ^ ClassCommentEntry class: self  ].
	pathSegment = ClassDefinitionEntry basicBasename
		ifTrue: [ ^ ClassDefinitionEntry class: self  ].
	pathSegment = ResourcesEntry basicBasename
		ifTrue: [ ^ ResourcesEntry on: self ].
	^ absentBlock value.