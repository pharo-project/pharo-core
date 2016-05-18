menu: aMenu shifted: aBoolean
	(aMenu add: 'Refresh' target: self selector: #collectAllShortcuts) 
	icon: (Smalltalk ui icons iconNamed: #smallUpdateIcon).
	self kmTable selectedItem ifNil:[^ aMenu].
	(aMenu add: 'Browse Definition' target: self selector: #browseDefinitionOfSelectedShortcut)
	icon: (Smalltalk ui icons iconNamed: #smallSystemBrowserIcon).
	(aMenu add: 'Inspect Action' target: self selector: #inspectActionOfSelectedShortcut)
	icon: (Smalltalk ui icons iconNamed: #smallInspectItIcon).
	^ aMenu