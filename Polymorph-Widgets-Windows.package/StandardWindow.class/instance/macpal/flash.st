flash
	"Flash the window."
	
	|fs c w d|
	fs := self fillStyle.
	c := self color alphaMixed: 0.5 with: Color white.
	w := self world.
	d := 0.
	2 timesRepeat: [
		(Delay forDuration: d milliSeconds) wait.
		d := 200.
		self color: c.
		w ifNotNil: [w displayWorldSafely].
		(Delay forDuration: d milliSeconds) wait.
		self fillStyle: fs.
		w ifNotNil: [w displayWorldSafely]]
