dDist
	| oldDistance |
	oldDistance := fingersDistanceFromCenter.
	fingersDistanceFromCenter := self fingersDistanceFromCenter.
	^ fingersDistanceFromCenter - oldDistance