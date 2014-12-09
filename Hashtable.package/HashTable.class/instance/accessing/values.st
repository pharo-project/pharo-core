values
	"Answer a Collection containing the receiver's values."
	| out |
	out := WriteStream on: (Array new: self size).
	self valuesDo: [:value | out nextPut: value].
	^ out contents