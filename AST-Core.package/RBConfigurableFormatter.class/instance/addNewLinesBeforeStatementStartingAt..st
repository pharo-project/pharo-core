private
addNewLinesBeforeStatementStartingAt: anInteger 
	| newLines |
	newLines := MinimumNewLinesBetweenStatements 
				max: (RetainBlankLinesBetweenStatements 
						ifTrue: [self newLinesBeforeStartingAt: anInteger]
						ifFalse: [0]).
	newLines = 0 ifTrue: [self space] ifFalse: [self newLines: newLines]