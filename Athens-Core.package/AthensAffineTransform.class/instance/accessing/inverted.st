inverted
	"answer an inverse transformation of receiver"
	| det |
	det := sx * sy - (shx * shy).
	^ self class new
		sx: sy / det;
		sy: shy * -1 / det;
		shx: shx * -1 / det;
		shy: sx / det;
		x: shx * y - (x * sy) / det;
		y: shy * x - (sx * y) / det;
		yourself