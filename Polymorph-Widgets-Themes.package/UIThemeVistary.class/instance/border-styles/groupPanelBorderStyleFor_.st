groupPanelBorderStyleFor: aGroupPanel
	"Answer the normal border style for a group panel."

	^TabPanelBorder new
		width: 1;
		baseColor: (aGroupPanel paneColor lighter alphaMixed: 0.8 with: Color black);
		tabSelector: aGroupPanel