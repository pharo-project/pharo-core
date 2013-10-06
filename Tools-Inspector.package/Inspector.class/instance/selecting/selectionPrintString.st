selectionPrintString
	| text |
	selectionUpdateTime := [text := [self selection printStringLimitedTo: 5000]
						on: Error
						do: [text := self printStringErrorText.
							text
								addAttribute: TextColor red
								from: 1
								to: text size.
							text]] timeToRun.
	^ text