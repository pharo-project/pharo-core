showFontsInstallationFolder
	"
	self showFontsInstallationFolder
	"

	^self shellRunDLL: 'Shell32.dll,SHHelpShortcuts_RunDLL FontsFolder'