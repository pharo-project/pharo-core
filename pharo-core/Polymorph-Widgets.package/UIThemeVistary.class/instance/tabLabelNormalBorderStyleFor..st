border-styles
tabLabelNormalBorderStyleFor: aTabLabel
	"Answer the normal border style for a tab label."

	|pc mc ic|
	pc := aTabLabel paneColor lighter.
	mc := pc alphaMixed: 0.8 with: Color black.
	ic := Color white alpha: 0.3. 
	^(CompositeBorder new width: 1)
		borders: {BorderStyle simple
					width: 1;
					baseColor: mc.
				BorderStyle simple
					width: 1;
					baseColor: ic}