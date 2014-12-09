editorDo: aBlock

	^ self widgetDo: [ :w | aBlock value: w submorphs first viewMorph ]
