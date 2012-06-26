project
disableDeferredUpdates: aBoolean
	"If the argument is true, disable deferred screen updating."
	"Details: When deferred updating is used, Morphic performs double-buffered screen updates by telling the VM to de-couple the Display from the hardware display buffer, drawing directly into the Display, and then forcing the changed regions of the Display to be copied to the screen. This saves both time (an extra BitBlt is avoided) and space (an extra display buffer is avoided). However, on platforms on which the Display points directly to the hardware screen buffer, deferred updating can't be used (you'd see ugly flashing as the layers of the drawing were assembled). In this case, the drawing is composited into an offscreen FormCanvas  and then copied to the hardware display buffer."

	DisableDeferredUpdates := aBoolean.
