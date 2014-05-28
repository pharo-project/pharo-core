installFullTheme
	"Installs full theme: 
		this theme
		dark forts
		desktop background
		completion list colors"
		
	self beCurrent.
	SHPreferences setStyleTable: SHTextStylerST80 darkStyleTable.
	PolymorphSystemSettings desktopColor: Color darkGray darker.
	NECPreferences backgroundColor: UITheme current windowColor. 
	Paragraph insertionPointColor: UITheme current caretColor.
	