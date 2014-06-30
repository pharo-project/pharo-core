optionalButtonRow
	"Answer a row of buttons to occur in a tool pane"

	| aRow |
	aRow := AlignmentMorph newRow.
	aRow hResizing: #spaceFill.
	aRow clipSubmorphs: true.
	aRow layoutInset: 2@2; cellInset: 3.
	aRow wrapCentering: #center; cellPositioning: #leftCenter.
	self changeListButtonSpecs do:
		[:triplet | | aButton |
			aButton := PluggableButtonMorph
				on: self
				getState: nil
				action: triplet second.
			aButton
				hResizing: #spaceFill;
				vResizing: #spaceFill;
				label: triplet first asString;
				askBeforeChanging: true;
				onColor: Color white offColor: Color white.

			aRow addMorphBack: aButton.
			aButton setBalloonText: triplet third].
	aRow addMorphBack: self regularDiffButton.
	aRow addMorphBack: self prettyDiffButton.
	^ aRow