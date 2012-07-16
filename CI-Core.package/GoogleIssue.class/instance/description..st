acessing
description: aStringOrDescription
	description := aStringOrDescription asGoogleIssueDescription.
	description title: self title.
	description author: (self tracker ifNil: [ nil ] ifNotNil: [:t | t user ]).