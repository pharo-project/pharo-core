mouseDown: anEvent
	| lineIndex |
	lineIndex := self lineIndexForPoint: anEvent position.
	(self paragraphProvider segmentsAtLine: lineIndex) do: [ :s | s icon ifNotNil: [ Transcript show: '[x]' ] ] 