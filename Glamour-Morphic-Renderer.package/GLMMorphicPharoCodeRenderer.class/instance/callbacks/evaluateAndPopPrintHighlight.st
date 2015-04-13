evaluateAndPopPrintHighlight

	GLMPrintPopper installAlarmFor: [ 
		textMorph textArea editor highlightEvaluateAndDo: [ :result | 
			textMorph shoutStyler style: textMorph text.
			GLMPrintPopper new 
				openFromRubric: textMorph textArea withResult: result ] ]