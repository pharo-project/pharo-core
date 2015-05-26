evaluateSelectionAndDo: aBlock

	^ self handleEdit: [textMorph editor evaluateSelectionAndDo: aBlock]