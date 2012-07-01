ansi protocol
days: days seconds: seconds

	^ self basicNew seconds: days * SecondsInDay + seconds nanoSeconds: 0
