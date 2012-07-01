squeak protocol
milliSecondsSinceMidnight
	| msm msClock |

	"This is usually only during system startup..."
	self waitForOffsets.

	msClock := self millisecondClockValue.
	msClock < LastMilliSeconds ifTrue: [ "rolled over"
		MilliSecondOffset := MilliSecondOffset + (SmallInteger maxVal // 2) + 1 ].
	LastMilliSeconds := msClock.
	[
	msm := msClock + MilliSecondOffset.
	msm >= 86400000 ] whileTrue: [
		"next day"
		LastTick := -1.
		DaysSinceEpoch := DaysSinceEpoch + 1.
		MilliSecondOffset := MilliSecondOffset - 86400000 ].
	"day rolled over sanity check"
	(LastTick = -1 and: [
		(Duration
			days: SqueakEpoch
			hours: 0
			minutes: 0
			seconds: self clock totalSeconds) days ~= DaysSinceEpoch ]) ifTrue: [
		self initializeOffsets.
		^ self milliSecondsSinceMidnight ].
	^ msm.