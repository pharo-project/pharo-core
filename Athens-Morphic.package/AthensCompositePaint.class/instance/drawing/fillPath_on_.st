fillPath: athensPath on: anAthensCanvas 

	"This is a terminal method in rendering dispatch scheme
	canvas->shape->paint. See AthensCanvas>>fillShape: "

	paints do: [:paint | 
				paint fillPath: athensPath on: anAthensCanvas ]
