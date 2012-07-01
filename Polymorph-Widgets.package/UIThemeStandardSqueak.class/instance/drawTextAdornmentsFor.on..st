border-styles
drawTextAdornmentsFor: aPluggableTextMorph on: aCanvas
	"Indicate edit status for the given morph.
	Include a thin red inset border for unaccepted edits, or, if the unaccepted edits are known to conflict with a change made somewhere else to the same method (typically), put a thick red frame"

	aPluggableTextMorph wantsFrameAdornments ifTrue:
		[(aPluggableTextMorph model notNil and: [aPluggableTextMorph model refusesToAcceptCode])
			ifTrue:  "Put up feedback showing that code cannot be submitted in this state"
				[aCanvas frameRectangle: aPluggableTextMorph innerBounds width: 2 color: Color tan]
			ifFalse:
				[(aPluggableTextMorph hasEditingConflicts or: [aPluggableTextMorph hasValidText not])
					ifTrue:
						[aCanvas frameRectangle: aPluggableTextMorph innerBounds width: 3 color: Color red] 
					ifFalse:
						[aPluggableTextMorph hasUnacceptedEdits
							ifTrue:
								[aPluggableTextMorph model wantsDiffFeedback
									ifTrue:
										[aCanvas frameRectangle: aPluggableTextMorph innerBounds width: 3 color: Color green]
									ifFalse:
										[aCanvas frameRectangle: aPluggableTextMorph innerBounds width: 1 color: Color red]]
							ifFalse:
								[aPluggableTextMorph model wantsDiffFeedback
									ifTrue:
										[aCanvas frameRectangle: aPluggableTextMorph innerBounds width: 1 color: Color green]]]]]