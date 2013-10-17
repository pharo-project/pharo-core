readFrom: inputStream pattern: pattern
	"Read a Date from the stream based on the pattern which can include the tokens:
	
		y = A year with 1-n digits
		yy = A year with 2 digits
		yyyy = A year with 4 digits
		m = A month with 1-n digits
		mm = A month with 2 digits
		d = A day with 1-n digits
		dd = A day with 2 digits
		
	...and any other Strings inbetween. Representing $y, $m and $d is done using
	\y, \m and \d and slash itself with \\. Simple example patterns:

		'yyyy-mm-dd'
		'yyyymmdd'
		'yy.mm.dd'
		'y-m-d'

	A year given using only two decimals is considered to be >2000."

	| day month year patternStream char |
	patternStream := pattern readStream.
	[patternStream atEnd] whileFalse: [
		inputStream atEnd ifTrue: [^nil].
		char := patternStream next.
		char = $\
			ifTrue: [inputStream next = patternStream next ifFalse: [^nil]]
			ifFalse: [
				char = $y
					ifTrue: [
						(patternStream nextMatchAll: 'yyy')
							ifTrue: [year := (inputStream next: 4) asInteger]
							ifFalse: [
								(patternStream peekFor: $y)
									ifTrue: [
										year := (inputStream next: 2) asInteger]
									ifFalse: [
										year := Integer readFrom: inputStream]]]
					ifFalse: [
						char = $m
							ifTrue: [
								(patternStream peekFor: $m)
									ifTrue: [
										month := (inputStream next: 2) asInteger]
									ifFalse: [
										month := Integer readFrom: inputStream]]
							ifFalse: [
								char = $d
									ifTrue: [
										(patternStream peekFor: $d)
											ifTrue: [
												day := (inputStream next: 2) asInteger]
											ifFalse: [
												day := Integer readFrom: inputStream]]
									ifFalse: [
										inputStream next = char ifFalse: [^nil]]]]]].
	(year isNil | month isNil | day isNil) ifTrue: [^nil].
	^self year: year month: month day: day