registerEvents

	items whenChangedDo: [ self changed: #getItems ].
	
	headerTitle whenChangedDo: [ :title | 
		self changed: #getHeaderTitle.
		self changed: { #hasHeader: . title notNil } ].
	deSelectOnReclick whenChangedDo: [ :bool | self changed: { #deSelectOnReclick: . bool } ].
	isMultipleSelection whenChangedDo: [ :bool | self changed: { #isMultipleSelection: . bool } ].
	unselectOnChange whenChangedDo: [ :bool | self changed: { #unselectOnChange: . bool } ].
	handlesDoubleClick whenChangedDo: [ :bool | self changed: { #handlesDoubleClick . bool } ].