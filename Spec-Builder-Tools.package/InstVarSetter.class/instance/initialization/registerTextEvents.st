registerTextEvents

	text acceptBlock: [:txt || item |
		item := picklist selectedItem.
		((textBindings at: list selectedItem ifAbsentPut: [ Dictionary new ]) at: item ifAbsentPut: [ self defaultText->false ]) key: txt .
		(picklist checkboxFor: item) state: true.]