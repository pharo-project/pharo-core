initialize-release
initializeOffsets
	| durationSinceEpoch secondsSinceMidnight nowSecs |
	LastTick := 0.
	nowSecs := self clock secondsWhenClockTicks.
	LastMilliSeconds := self millisecondClockValue.
	durationSinceEpoch := Duration
		days: SqueakEpoch
		hours: 0
		minutes: 0
		seconds: nowSecs.
	DaysSinceEpoch := durationSinceEpoch days.
	secondsSinceMidnight := (durationSinceEpoch -
		(Duration
			days: DaysSinceEpoch
			hours: 0
			minutes: 0
			seconds: 0)) asSeconds.
	MilliSecondOffset := secondsSinceMidnight * 1000 - LastMilliSeconds