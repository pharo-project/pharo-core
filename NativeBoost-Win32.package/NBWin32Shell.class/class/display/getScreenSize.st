getScreenSize
	"returns the current screen size
 	 Return Value:
		A point representing the current screen size
	" 
	|x y|
	x := self getScreenWidth.
	y := self getScreenHeight.
	^x@y