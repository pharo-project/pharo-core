newRemoveButtonFor: anAssociation in: aPopup

	^ (self newActionButtonIn: aPopup)
		hintTitle: 'Remove binding';
		hintText: 'will unassign variable';
		icon: aPopup themer bindingThemer removeIcon;
		action: [ : b |
			b owner disable.
			GLMAnimation swipeLeft
				onCompleted: [
					self removeBinding: anAssociation.
					b owner owner scrollpane adaptor on: self currentBindingsSorted.
					b owner owner scrollpane invalidate ];
				animate: b owner ]