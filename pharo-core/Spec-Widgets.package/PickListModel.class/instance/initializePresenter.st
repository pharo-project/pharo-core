initialization
initializePresenter
	
	listModel whenListChanged: [ self focusOrder removeAll ].
	labelClickableHolder whenChangedDo: [:aBoolean | 
		associationsWrapperToItem keys do: [:e | e labelClickable: aBoolean ]].

	defaultValueHolder whenChangedDo: [:value | associationsWrapperToItem keysDo: [:cb | cb state: value ]].