control panel applets
showInternetExplorerFavoriteManager
	"
	self showInternetExplorerFavoriteManager
	"

	^self shellRunDLL: 'shdocvw.dll,DoOrganizeFavDlg'