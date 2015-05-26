writeString: aString
	"write a null-terminated byte string to receiver's address"
	
	| str |
	str := aString copyWith: (Character value: 0).
	NativeBoost memCopy: str asByteArray to: self size: str size.
