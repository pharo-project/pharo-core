internet
withUnixLineEndings
	"Assume the string is textual, and that CR, LF, and CRLF are all valid line endings.
	Replace each occurence with a single LF."
	| cr lf inPos outPos outString newOutPos indexLF indexCR |
	cr := Character cr.
	indexCR := self indexOf: cr startingAt: 1.
	indexCR = 0 ifTrue: [^self].
	
	lf := Character linefeed.
	indexLF := self indexOf: lf startingAt: 1.
	indexLF = 0 ifTrue: [^self copy replaceAll: cr with: lf].

	inPos := outPos := 1.
	outString := String new: self size.

	["check if next CR is before next LF or if there are no more LF"
	(indexLF = 0 or: [indexCR < indexLF])
		ifTrue: [
			newOutPos := outPos + 1 + indexCR - inPos.
			outString replaceFrom: outPos to: newOutPos - 2 with: self startingAt: inPos.
			outString at: newOutPos - 1 put: lf.
			outPos := newOutPos.
			1 + indexCR = indexLF
				ifTrue: ["Caught a CR-LF pair"
					inPos := 1 + indexLF.
					indexLF := self  indexOf: lf startingAt: inPos]
				ifFalse: [inPos := 1 + indexCR].
			indexCR := self indexOf: cr startingAt: inPos]
		ifFalse: [
			newOutPos := outPos + 1 + indexLF - inPos.
			outString replaceFrom: outPos to: newOutPos - 1 with: self startingAt: inPos.
			outPos := newOutPos.
			inPos := 1 + indexLF.
			indexLF := self indexOf: lf startingAt: inPos].
	indexCR = 0]
		whileFalse.

	"no more CR line endings.  copy the rest"
	newOutPos := outPos + (self size - inPos + 1).
	outString replaceFrom: outPos to: newOutPos - 1 with: self startingAt: inPos.
	^outString copyFrom: 1 to: newOutPos - 1