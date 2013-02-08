user interface
addModelItemsToWindowMenu: aMenu
	"Add model-related items to the window menu"

	"super addModelItemsToWindowMenu: aMenu."

	aMenu
		addLine;
		add: 'Clean all manifest' translated target: checker action: #cleanAllManifest;
		add: 'Reapply all  rules' translated target: self action: #reapplyAllRules