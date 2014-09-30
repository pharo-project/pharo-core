gtInspectorStScriptIn: composite
	<gtInspectorPresentationOrder: 40>
	composite smalltalkCode
			title: 'Script';
			display: [ self readStreamDo: [ :s | s contents ] ];
			selectionPopulate: #selection
				on: $o
				entitled: 'Do it and open (o)'
				with: [ :text :object | 
					Compiler evaluate: text selectedText for: object logged: false ];
			act: [ :text |
				self ensureDelete; writeStreamDo: [ :s | s nextPutAll: text text asString ] ]
				icon: GLMUIThemeExtraIcons glamorousSave
				on: $s
				entitled: 'Save';
			when: [ self extension = 'st' ]