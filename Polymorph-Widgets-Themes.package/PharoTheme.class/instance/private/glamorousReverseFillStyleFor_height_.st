glamorousReverseFillStyleFor: aMorph height: anInteger
	"Return the normal button fillStyle for the given button."
	
	| baseColor |
	baseColor := self glamorousBaseColorFor: aMorph.
	^ self glamorousReverseFillStyleWithBaseColor: baseColor for: aMorph height: anInteger
