installFullTheme
	"Installs full theme: 
		this theme
		default forts
		desktop background
		completion list colors"
	SHPreferences setStyleTable: SHTextStylerST80 blueStyleTable.
		
	self beCurrent.
	
	PolymorphSystemSettings desktopColor: (Color r: 240 g: 240 b: 240 range: 255).
	NECPreferences backgroundColor: UITheme current windowColor. 
	Paragraph insertionPointColor: UITheme current caretColor.