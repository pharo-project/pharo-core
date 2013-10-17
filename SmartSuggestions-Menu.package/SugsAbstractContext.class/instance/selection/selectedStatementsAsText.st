selectedStatementsAsText
	| sequenceNode|
	sequenceNode := self selectedStatementsAsSequence.
	^ sequenceNode formattedCode 
	