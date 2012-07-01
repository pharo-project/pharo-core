world menu
grabRubberBandFromScreen: evt
	"Allow the user to specify a polygonal area of the Display, capture the pixels from that area, and use them to create a new drawing morph. Attach the result to the hand."

	self extractScreenRegion: (PolygonMorph fromHand: evt hand)
		andPutSketchInHand: evt hand