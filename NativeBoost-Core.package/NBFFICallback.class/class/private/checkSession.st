checkSession
	session == NativeBoost uniqueSessionObject ifFalse: [
		numArgs := cbEnter := cbLeave := trunkCode := nil.
		session := NativeBoost uniqueSessionObject.
	].

