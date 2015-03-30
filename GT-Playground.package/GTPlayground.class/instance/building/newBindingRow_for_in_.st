newBindingRow: anAssociation for: aCollection in: aPopup

	^ (self newRowIn: aPopup)
		borderWidth: { 0 . 0 . aCollection last == anAssociation ifTrue: [ 0 ] ifFalse: [ aPopup themer bindingThemer borderWidth ] . 0 };
		addAllBricks: {
			(self newBindingLabelIn: aPopup)
				textColor: aPopup themer textLightColor;
				text: anAssociation key.
			(self newBindingLabelIn: aPopup)
				text: anAssociation value asString.
			self newRemoveButtonFor: anAssociation in: aPopup };
		yourself