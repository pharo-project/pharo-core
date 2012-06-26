menu commands
printIt
	| oldEditor |

	textMorph editor selectFrom: selectionInterval first to: selectionInterval last;
						model: model.  "For, eg, evaluateSelection"
	textMorph handleEdit: [(oldEditor := textMorph editor) evaluateSelectionAndDo: [:result | 
		selectionInterval := oldEditor selectionInterval.
		textMorph installEditorToReplace: oldEditor.
		textMorph handleEdit: [oldEditor afterSelectionInsertAndSelect: result printString].
		selectionInterval := oldEditor selectionInterval.
	
		textMorph editor selectFrom: selectionInterval first to: selectionInterval last.
		self scrollSelectionIntoView]]