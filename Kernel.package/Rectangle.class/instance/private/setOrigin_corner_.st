setOrigin: topLeft corner: bottomRight 
	  origin := topLeft.
    corner := bottomRight.
    (self width < 0 or: [ self height < 0 ]) ifTrue: [
DegeneratedRectangle signal.
 Halt once ]