contentsSymbolQuints
	"Answer a list of quintuplets representing information on the alternative views available in the code pane"

	^ #(
(source			togglePlainSource 		showingPlainSourceString	'Source'			'the textual source code as writen')
(showDiffs		toggleRegularDiffing	showingRegularDiffsString	'ShowDiffs'		'the textual source diffed from its prior version'))