as yet unclassified
textMorph: aSymbol
	| text |
	text := builder pluggableTextSpec new.
	text 
		model: tool;
		getText: aSymbol; 
		setText: (aSymbol, ':') asSymbol;
		frame: currentFrame.
	window children add: text