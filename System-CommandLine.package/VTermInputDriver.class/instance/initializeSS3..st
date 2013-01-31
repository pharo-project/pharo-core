initialize-release
initializeSS3: actions
	actions at: $p put: [ handler keypad: 0 ].
	actions at: $q put: [ handler keypad: 1 ].
	actions at: $r put: [ handler keypad: 2 ].
	actions at: $s put: [ handler keypad: 3 ].
	actions at: $t put: [ handler keypad: 4 ].
	actions at: $u put: [ handler keypad: 5 ].
	actions at: $v put: [ handler keypad: 6 ].
	actions at: $w put: [ handler keypad: 7 ].
	actions at: $x put: [ handler keypad: 8 ].
	actions at: $y put: [ handler keypad: 9 ].
	
	actions at: $j put: [ handler keypadTimes ].
	actions at: $k put: [ handler keypadPlus ].
	actions at: $l put: [ handler keypadBacktick ].
	actions at: $n put: [ handler keypadDot ].
	actions at: $M put: [ handler keypadEnter ].
	actions at: $m put: [ handler keypadMinus ].
	actions at: $o put: [ handler keypadDivide ].
	actions at: $X put: [ handler keypadEqual ].
	
	actions at: $P put: [ handler functionKey: 1 ].
	actions at: $Q put: [ handler functionKey: 2 ].
	actions at: $R put: [ handler functionKey: 3 ].
	actions at: $S put: [ handler functionKey: 4 ].
	actions at: $H put: [ handler home ].
	actions at: $F put: [ handler end ].