evaluateAndPopPrintSelection

	GLMPrintPopper installAlarmFor: [ 
		textMorph textArea editor evaluateSelectionAndDo: [ :result | 
			GLMPrintPopper new 
				openFromRubric: textMorph textArea withResult: result ] ]