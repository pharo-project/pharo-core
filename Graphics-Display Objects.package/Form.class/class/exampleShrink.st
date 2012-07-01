examples
exampleShrink

	| f s |
	f := Form fromUser.
	s := f shrink: f boundingBox by: 2 @ 5.
	s displayOn: Display at: Display center	

	"Form exampleShrink."