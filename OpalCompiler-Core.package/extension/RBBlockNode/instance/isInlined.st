isInlined
	(parent isMessage and: [parent isInlineAndOr]) ifTrue: [^ true].
	(parent isMessage and: [parent isInlineIf]) ifTrue: [^ true].
	(parent isMessage and: [parent isInlineIfNil]) ifTrue: [^ true].
	^ self isInlinedLoop