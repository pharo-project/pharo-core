addExportMenuItems: aMenu hand: aHandMorph
	"Add export items to the menu"

	aMenu ifNotNil:
		[ | aSubMenu |
		aSubMenu := UIManager default newMenuIn: self for: self.
		aSubMenu add: 'BMP file' action: #exportAsBMP.
		aSubMenu add: 'GIF file' action: #exportAsGIF.
		aSubMenu add: 'JPEG file' action: #exportAsJPEG.
		aSubMenu add: 'PNG file' action: #exportAsPNG.
		aMenu add: 'export...' translated icon: Smalltalk ui icons smallExportIcon subMenu: aSubMenu.
		aMenu lastItem icon: Smalltalk ui icons smallExportIcon ].
