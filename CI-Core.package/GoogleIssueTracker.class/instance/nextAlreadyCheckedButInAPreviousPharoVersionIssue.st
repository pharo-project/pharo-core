issues
nextAlreadyCheckedButInAPreviousPharoVersionIssue
	"choose the next issue to check by ulysse"

	| issues nextIssue |
	"try issues which are new and unprrocessed"
	issues := self issuesWithParams: 'can=open&status=' , PharoTrackerLabels issueChecked , '&q=Milestone%3D' , SystemVersion current dottedMajorMinor.
	
	^ issues
		detect: [ :e || labels |
			labels := e labels select: [ :s | (s beginsWith: self checkedInLabel) ].
			labels ifEmpty: [ ^ e ].
			
			labels noneSatisfy: [:s | s squeezeOutNumber = Smalltalk lastUpdateString squeezeOutNumber ]]
		ifNone: [ nil ]