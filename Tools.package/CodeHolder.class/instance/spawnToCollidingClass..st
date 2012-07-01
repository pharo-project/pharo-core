commands
spawnToCollidingClass: aClass
	"Potentially used to copy down code from a superclass to a subclass in one easy step, in the case where the given class already has its own version of code, which would consequently be clobbered if the spawned code were accepted."

	self inform: 'That would be destructive of
some pre-existing code already in that
class for this selector.  For the moment,
we will not let you do this to yourself.'