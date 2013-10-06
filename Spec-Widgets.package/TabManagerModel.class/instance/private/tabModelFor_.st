tabModelFor: tab

	^ tabs detect: [ :e | e widget = tab ]