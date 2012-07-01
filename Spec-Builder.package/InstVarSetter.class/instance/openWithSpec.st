protocol
openWithSpec

	super openWithSpec.
	text widget ifNotNil: [:m | m styler workspace: self ]