examples
exampleMagnify

	| f m |
	f := Form fromUser.
	m := f magnify: f boundingBox by: 5 @ 5.
	m displayOn: Display at: Display center

	"Form exampleMagnify."