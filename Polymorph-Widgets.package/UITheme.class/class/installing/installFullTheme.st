installFullTheme
	"Installs full theme: 
		this theme
		default forts
		desktop background
		completion list colors"
		
	self beCurrent.
	SHPreferences setStyleTable: SHTextStylerST80 blueStyleTable.
	PolymorphSystemSettings desktopColor: (Color r: 240 g: 240 b: 240 range: 255).
	NECPreferences backgroundColor: UITheme current windowColor. 
	Paragraph insertionPointColor: UITheme current caretColor.