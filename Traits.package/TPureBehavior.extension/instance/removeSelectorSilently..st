adding/removing methods
removeSelectorSilently: selector 
	"Remove selector without sending system change notifications"

	^ SystemChangeNotifier uniqueInstance doSilently: [self removeSelector: selector].