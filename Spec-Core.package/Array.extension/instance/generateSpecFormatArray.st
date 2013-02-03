*Spec-Core
generateSpecFormatArray
	| str symbols |
	str := self readStream.	
	symbols := #( leftFraction: topFraction: rightFraction: bottomFraction: leftOffset: topOffset: rightOffset: bottomOffset: ).
	
	^ String streamContents: [:s |
		s << '{#FrameLayout.' ; cr.
		self first asInteger== 0
			ifFalse: [ 
				s tab << ('#','leftFraction:.') << ' ' << self first asString <<'.'; cr ].
		self second asInteger == 0
			ifFalse: [ 
				s tab << ('#','topFraction:.') << ' ' << self second asString <<'.'; cr].
		self third asInteger == 1
			ifFalse: [ 
				s tab << ('#','rightFraction:.') << ' ' << self third asString <<'.';cr].
		self fourth asInteger == 1
			ifFalse: [ 
				s tab << ('#','bottomFraction:.') << ' ' << self fourth asString <<'.';cr].
		self size = 8 ifTrue: [
			5 to: 8 do: [:i |
				(self at: i) asInteger == 0 
					ifFalse: [
						s tab << ('#',(symbols at: i) asString) <<'.' << ' ' << (self at:i) asString <<'.'.
						s cr ]]].
		s skip: -1.
		s << '}'].
		