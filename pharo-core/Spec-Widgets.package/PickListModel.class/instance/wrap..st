private
wrap: item
	| checkBox |

	associationsItemToWrapper 
		at: item
		ifPresent: [:cb | ^ cb ].

	checkBox := self instantiate: CheckBoxModel.
	checkBox label: (wrapHolder contents cull: item cull: self).
	checkBox whenActivatedDo: [ 
		self addPicked: item.
		listModel setSelectedItem: checkBox.
		listModel takeKeyboardFocus ].
	checkBox whenDesactivatedDo: [ 
		self removePicked: item.
		listModel setSelectedItem: checkBox.
		listModel takeKeyboardFocus ].
	checkBox 
		state: self defaultValue;
		labelClickable: self labelClickable.
	associationsWrapperToItem at: checkBox put: item.
	associationsItemToWrapper at: item put: checkBox.
	^ checkBox