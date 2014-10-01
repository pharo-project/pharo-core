evaluateAndPopPrintSelection

	textMorph textArea editor evaluateSelectionAndDo: [ :result | 
		GLMPrintPopper installAlarmFor: [ 
			GLMPrintPopper new 
				openFromRubric: textMorph textArea withResult: result ] ]