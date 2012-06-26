menu actions
fileInSelections 
	| any |
	any := false.
	listSelections with: changeList do: 
		[:selected :item | selected ifTrue: [any := true. item fileIn]].
	any ifFalse:
		[self inform: 'nothing selected, so nothing done']