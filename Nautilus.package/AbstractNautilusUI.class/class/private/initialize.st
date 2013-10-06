initialize
	" self initialize "

	ClassesIconsCache := WeakIdentityKeyDictionary new.
	GroupsIconsCache := WeakIdentityKeyDictionary new.
	PackagesIconsCache := WeakIdentityKeyDictionary new.
	
	NextFocusKey := Character arrowRight.
	PreviousFocusKey := Character arrowLeft.