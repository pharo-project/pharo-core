tabLabelSelectedBorderStyleFor: aTabLabel
	"Answer the selected border style for a tab label."

	^BorderStyle simple
		width: 1;
		baseColor: (aTabLabel paneColor lighter alphaMixed: 0.8 with: Color black)