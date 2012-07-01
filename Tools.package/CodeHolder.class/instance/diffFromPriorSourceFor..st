diffs
diffFromPriorSourceFor: sourceCode 
	"If there is a prior version of source for the selected method, return a diff, else just return the source code"

	| prior |
	^ (prior := self priorSourceOrNil)
		ifNil: [sourceCode]
		ifNotNil: [TextDiffBuilder buildDisplayPatchFrom: prior to: sourceCode inClass: self selectedClass prettyDiffs: self showingPrettyDiffs]