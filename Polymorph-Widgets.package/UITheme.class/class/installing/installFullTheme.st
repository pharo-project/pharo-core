installFullTheme
	"Installs full theme: 
		this theme
		default forts
		desktop background
		completion list colors"
		
	self beCurrent.
	SHPreferences setStyleTable: SHTextStylerST80 blueStyleTable.
	PolymorphSystemSettings desktopColor: Color lightGray lighter lighter.
	NECPreferences backgroundColor: UITheme current windowColor. 
	Paragraph insertionPointColor: UITheme current caretColor.