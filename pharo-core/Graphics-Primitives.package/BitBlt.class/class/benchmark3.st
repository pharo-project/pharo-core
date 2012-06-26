benchmarks
benchmark3
	"BitBlt benchmark"
	"Run a benchmark on different combinations rules, source/destination depths and BitBlt modes. Note: This benchmark doesn't give you any 'absolute' value - it is intended only for benchmarking improvements in the bitblt code and nothing else.
	Attention: *this*may*take*a*while*"
	| destRect log |
	log := String new writeStream.
	destRect := 0 @ 0 extent: 600 @ 600.
	"Form paint/Form over - the most common rules"
	#(25 3 ) do: 
		[ :rule | 
		Transcript
			cr;
			show: '---- Combination rule: ' , rule printString , ' ----'.
		log
			cr;
			nextPutAll: '---- Combination rule: ' , rule printString , ' ----'.
		#(1 2 4 8 16 32 ) do: 
			[ :destDepth | | dest | 
			dest := nil.
			dest := Form 
				extent: destRect extent
				depth: destDepth.
			Transcript cr.
			log cr.
			#(1 2 4 8 16 32 ) do: 
				[ :sourceDepth | | bb source t | 
				Transcript
					cr;
					show: sourceDepth printString , ' => ' , destDepth printString.
				log
					cr;
					nextPutAll: sourceDepth printString , ' => ' , destDepth printString.
				source := nil.
				bb := nil.
				source := Form 
					extent: destRect extent
					depth: sourceDepth.
				source getCanvas 
					fillOval: dest boundingBox
					color: Color yellow
					borderWidth: 30
					borderColor: Color black.
				bb := WarpBlt toForm: dest.
				bb sourceForm: source.
				bb sourceRect: source boundingBox.
				bb destRect: dest boundingBox.
				bb colorMap: (source colormapIfNeededFor: dest).
				bb combinationRule: rule.

				"Measure speed of copyBits"
				t := Time millisecondsToRun: 
					[ 1 
						to: 10
						do: [ :i | bb copyBits ] ].
				Transcript
					tab;
					show: t printString.
				log
					tab;
					nextPutAll: t printString.
				bb 
					sourceForm: source
					destRect: source boundingBox.

				"Measure speed of 1x1 warpBits"
				bb cellSize: 1.
				t := Time millisecondsToRun: 
					[ 1 
						to: 4
						do: [ :i | bb warpBits ] ].
				Transcript
					tab;
					show: t printString.
				log
					tab;
					nextPutAll: t printString.

				"Measure speed of 2x2 warpBits"
				bb cellSize: 2.
				t := Time millisecondsToRun: [ bb warpBits ].
				Transcript
					tab;
					show: t printString.
				log
					tab;
					nextPutAll: t printString.

				"Measure speed of 3x3 warpBits"
				bb cellSize: 3.
				t := Time millisecondsToRun: [ bb warpBits ].
				Transcript
					tab;
					show: t printString.
				log
					tab;
					nextPutAll: t printString ] ] ].
	^ log contents