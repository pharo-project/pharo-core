initialize-release
initializeWith: anIssueId
	super initialize.
	id := anIssueId.
	attachments := OrderedCollection new.