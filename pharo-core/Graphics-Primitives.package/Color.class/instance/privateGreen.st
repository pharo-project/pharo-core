private
privateGreen
	"Private! Return the internal representation of my green component.
	Replaced >> by bitShift: 0 -. SqR! 2/25/1999 23:08"

	^ (rgb bitShift: 0 - GreenShift) bitAnd: ComponentMask