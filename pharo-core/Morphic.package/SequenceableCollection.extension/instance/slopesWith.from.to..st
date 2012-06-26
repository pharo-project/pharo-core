*Morphic-Basic
slopesWith: tripleKnots from: start to: end 
	"Sent to modifiable list of slopes. Fills in the slope values between start
	and end. Start and end slopes can be either clamped or nil. 
	If nil the natural slope for that value will be filled in. 
	We expect that the parameters meets the assertions in
	self assertSlopesWith: knots from: start to: end."
	"
	
	/* We solve the equation for knots with end conditions either known or unknown: 
	4*b1+b2 = 3*(a2 - a0) - b0			b0 known
	Or
	2*b0+b1 = 3*(a1 - a0) .			b0 == nil
	
	bN2+4*bN1 = 3*(aN-aN2)-bN		bN known
	Or
	bN1+2*bN = 3*(aN-aN1)			bN == nil
	 .
	b0, bN are starting and ending slopes.
	
	We now handle the special closed cubic case where a0 == aN ( i.e. N = knots size )
	and b0 == bN == nil .
	
	and inbetween:
	b2+4*b3+b4=3*(a4-a2)
	where a2 is (knots  atWrap: index + 1) etc.
	and the b's are the slopes.
	by using row operations to convert the matrix to upper 
	triangular and then back substitution. "
	| gamma delta n range isOpenRange |
	n := self size.
	gamma := Array new: n.
	delta := Array new: n.
	isOpenRange := end < (start + self size) .
	(self at: start)
		ifNotNil: [
			gamma at: start put: 0.0.
			delta
				at: start
				put: (self at: start).
			range := ( start + 1 to: end - 1 ) .
			] " clamped initial conditions"
		ifNil: [
				isOpenRange
				ifTrue:	
			[gamma at: start put: 2.0 reciprocal.
			delta
				at: start
				put:  ((tripleKnots atWrap: start + 1)
					- tripleKnots at: start ) * (gamma at: start) .
			range := ( start  to: end - 1 ) . ]  "natural initial conditions "
				ifFalse: 
			[ gamma at: start put: 4.0 reciprocal.
			delta
				at: start
				put:  ((tripleKnots atWrap: start + 1)
					- tripleKnots atWrap: start - 1 ) * (gamma at: start) .
			range := ( start + 1  to: end - 1 ) .
				]  "closed initial conditions "
				] .
	(start + 1 to: end - 1)
		do: [:i | gamma atWrap: i put: 1.0 / (4.0
						- (gamma atWrap: i - 1))].
	(start + 1 to: end - 1)
		do: [:i | delta atWrap: i put: ((tripleKnots atWrap: i + 1)
						- (tripleKnots atWrap: i - 1))
					- (delta atWrap: i - 1)
					* (gamma atWrap: i)].
	(self atWrap: end) 
		ifNil: [ isOpenRange
			ifTrue: [
			gamma atWrap: end put: 1.0 / (2.0  
										- (gamma atWrap: end - 1 )).
			delta
				atWrap: end
				put:  ((tripleKnots atWrap: end )
							- tripleKnots atWrap: end - 1 )
					 	- (delta at: end - 1 ) * (gamma atWrap: end)] "natural end conditions"
					ifFalse: [
			gamma atWrap: end put: 1.0 / (4.0  
										- (gamma atWrap: end - 1 )).
			delta
				atWrap: end
				put:  ((tripleKnots atWrap: end + 1 )
							- tripleKnots atWrap: end - 1 ) 
						- (delta at: end - 1 ) * (gamma atWrap: end)] "closed end conditions"  
					.
			self atWrap: end put: (delta atWrap: end ) .
				] 
	ifNotNil: [ 
			gamma atWrap: end put: 0.0 .
			delta
				atWrap: end
				put: (self atWrap: end)  .
		
			] "clamped end conditions" .
		
	range
		reverseDo: [:i | self atWrap: i put: 
					(delta atWrap: i)
					- ((gamma atWrap: i)
							* (self atWrap: i + 1)) ] .
	" reciever now contains the filled in slopes."
	^ self 