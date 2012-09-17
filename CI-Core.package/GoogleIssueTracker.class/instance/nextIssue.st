issues
nextIssue
	
	"choose the next issue to check by ulysse"
	
	| issues nextIssue |
	
	"try issues which are new and unprrocessed"
	issues := self issuesWithParams: self nextIssueParams.
	issues ifEmpty: [ ^ self nextAlreadyCheckedButInAPreviousPharoVersionIssue ].
	nextIssue := issues first.
	nextIssue hasFix
		ifTrue: [ ^ nextIssue ]
		ifFalse: [ 
			nextIssue errorNoSources.
			^ self nextIssue ]