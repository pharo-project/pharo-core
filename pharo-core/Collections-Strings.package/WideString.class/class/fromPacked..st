instance creation
fromPacked: aLong
	"Convert from a longinteger to a String of length 4."

	| s val |
	s := self new: 1.
	val := (((aLong digitAt: 4) << 24) bitOr:((aLong digitAt: 3) << 16))
				bitOr: (((aLong digitAt: 2) << 8) bitOr: (aLong digitAt: 1)).
	s basicAt: 1 put: val.
	^ s.

"WideString fromPacked: 'TEXT' asPacked"
