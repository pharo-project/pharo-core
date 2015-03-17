tabModelFor: tab

	^ tabs detect: [ :e | e = tab model ]