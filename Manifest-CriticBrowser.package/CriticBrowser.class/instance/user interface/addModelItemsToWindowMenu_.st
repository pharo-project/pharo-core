addModelItemsToWindowMenu: aMenu
	"Add model-related items to the window menu"

	aMenu
		addLine;
		add: 'Clean all manifest' translated target: checker selector: #cleanAllManifest;
		add: 'Reapply all  rules' translated target: self selector: #reapplyAllRules