displaying-display
follow: locationBlock while: durationBlock
   "Move an image around on the Display. Restore the background
   continuously without causing flashing. The argument, locationBlock,
   supplies each new location, and the argument, durationBlock, supplies
   true to continue, and then false to stop.
   8/20/96 sw: call follow:while:bitsBehind: to do the real work.  Note that th
method
   now returns the final bits behind as method value."
 
   | bitsBehind loc |
   bitsBehind := Form fromDisplay: ((loc := locationBlock value) extent: self extent).
   ^ self follow: locationBlock while: durationBlock bitsBehind: bitsBehind startingLoc: loc