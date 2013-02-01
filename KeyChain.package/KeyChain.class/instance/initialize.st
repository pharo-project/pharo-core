initialize
initialize
	"Initialization code for KeyChain"

	super initialize.

	bindings := IdentityDictionary new.
	
	encryptor := SHA1Ecryptor new.
	encryptorDecryptor := DummyEcryptorDecryptor new.
	
	password := nil.
	
	lastUnlock := Cookie new
					defaultValue: false;
					timeToLive: self defaultTimeBetweenUnlocks;
					yourself.