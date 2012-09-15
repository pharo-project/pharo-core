test
innerExtent
"self halt."
"	lock := lock +1.
"	
	^ (self innerBounds extent - 6" - (10+((self textSize printString size+1)*(self basicWidth)))")  max: 0@0