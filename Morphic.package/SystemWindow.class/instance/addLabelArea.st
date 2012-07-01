initialization
addLabelArea

	labelArea := (AlignmentMorph newSpacer: Color transparent)
			vResizing: #spaceFill;
			layoutPolicy: ProportionalLayout new.
	self addMorph: labelArea.