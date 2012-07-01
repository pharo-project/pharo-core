accessing
size
	"Return the number of elements stored in the receiver"
	| n |
	n := 0.
	"Note: The following loop is open-coded for speed"
	1 to: self basicSize do:[:i|
		n := n + ((self basicAt: i) bitShift: -16).
	].
	^n