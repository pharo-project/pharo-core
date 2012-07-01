private
stepToNextInt
	"Scaled integer version of forward differencing"
	self halt.
	(maxSteps >= 0) ifTrue:[
		self validateIntegerRange.
		lastX := lastX + ((fwDx + 16r8000) // 16r10000).
		lastY := lastY + ((fwDy + 16r8000) // 16r10000).
		fwDx := fwDx + fwDDx.
		fwDy := fwDy + fwDDy.
		maxSteps := maxSteps - 1.
	].