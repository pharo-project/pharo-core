point functions
nearestPointOnLineFrom: p1 to: p2
	"This will not give points beyond the endpoints"
	^ (self nearestPointAlongLineFrom: p1 to: p2)
		adhereTo: (p1 rect: p2)