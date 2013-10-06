assertSlopesWith: knots from: start to: end
	"We trust everything has been checked. 
	The following assertions should hold at this point: "
	
	[ self size = knots size ] assert. 
	"Sizes must be consistent." 
	[ end > start] assert. 
	"There must be at least one slope to clamp." 
	[ 0 < start and: [start <= knots size] ] assert. 
	"The clamped slope may be the last one."
	[  end  <= knots size + start ] assert. 
	"We can wrap. There may be only one known slope."
	"xxx self assert: [ end = knots size + start ifTrue: [ (self at: start) notNil ] ] . xxx"
		"xxx If we overlap slope must be known. xxx"
	{ start . end } 
		do: [ :index | | slope | slope := (self at: index ).
	[ slope isNil 
		or: [ slope isNumber 
		or: [ slope isPoint ] ] ] assert ] . 
	"And a known and reasonalble value or nil." 
		^true 
	