evaluateAndPopPrintHighlight

	GLMPrintPopper installAlarmFor: [ 
		textMorph textArea editor highlightEvaluateAndDo: [ :result | 
			GLMPrintPopper new 
				openFromRubric: textMorph textArea withResult: result ] ]