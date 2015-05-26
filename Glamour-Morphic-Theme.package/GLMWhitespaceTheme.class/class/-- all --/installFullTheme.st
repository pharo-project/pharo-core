installFullTheme
	"Installs full theme: 
		this theme
		default forts
		desktop background
		completion list colors"
		
	self beCurrent.
	self setPreferredShoutColors.
	self setPreferredWorldBackground.
	NECPreferences backgroundColor: UITheme current windowColor. 
	Paragraph insertionPointColor: UITheme current caretColor.