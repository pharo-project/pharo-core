isValid

	^ ( self text includesSpan: self span ) and: [ self span size >= self spanPosition and: [ self spanPosition >=0 ] ]