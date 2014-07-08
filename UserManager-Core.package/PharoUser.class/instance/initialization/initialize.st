initialize
	super initialize.

	avatar := self defaultAvatar.
	keychain := KeyChain new.
	unlockedKeychain := UnlockedKeyChain new.