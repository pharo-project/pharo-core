border-styles
plainGroupPanelBorderStyleFor: aGroupPanel
	"Answer the normal border style for a plain group panel."

	^BorderStyle simple
		width: 1;
		baseColor: (aGroupPanel paneColor lighter alphaMixed: 0.8 with: Color black)