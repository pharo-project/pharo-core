instance creation
fromPacked: aLong
	"Convert from a longinteger to a String of length 4."

	| s |
	s := self new: 4.
	s at: 1 put: (aLong digitAt: 4) asCharacter.
	s at: 2 put: (aLong digitAt: 3) asCharacter.
	s at: 3 put: (aLong digitAt: 2) asCharacter.
	s at: 4 put: (aLong digitAt: 1) asCharacter.
	^s

"String fromPacked: 'TEXT' asPacked"
