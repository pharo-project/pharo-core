codeContextMenu: menu shifted: shifted
	| donorMenu |
	
	"Now dynamically load any other actions."							
	menu addAllFromPragma: 'specDebuggerCodeContextMenu' target: self.
	
	"Directly load the standard actions here."
	donorMenu := shifted
		ifTrue: [SmalltalkEditor shiftedYellowButtonMenu]
		ifFalse: [SmalltalkEditor yellowButtonMenu].
	^ menu addAllFrom: donorMenu.