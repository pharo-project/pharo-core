registerListEvents

	list whenSelectedItemChanged: [:instVarDesc |
		instVarDesc
			ifNil: [ picklist items: {} ]
			ifNotNil: [
				picklist items: (instVarDesc type possibleEvents).
				(instVarDesc type possibleEvents) do: [:e |
					(picklist checkboxFor: e) state: ((textBindings at: list selectedItem ifAbsentPut: [ Dictionary new ]) at: e ifAbsentPut: [ self defaultText->false ]) value ]].
		picklist resetSelection.
		text text: '' ]