class initialization
startUp: resuming
	"Determine the current platform.
	Use the most specific (in terms of subclasses) platform available."

	| platformClass |
	"Look for the matching platform class"
	platformClass := self determineActivePlatformStartingAt: self.
	platformClass
		ifNil: [^self].
	Current := platformClass new.
	Current startUp: resuming