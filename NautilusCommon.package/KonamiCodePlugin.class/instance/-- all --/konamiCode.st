konamiCode

	| stream |
	^ code ifNil: [
			stream := '' writeStream.
			{ Character arrowUp. Character arrowUp. Character arrowDown. Character arrowDown. Character arrowLeft. Character arrowRight. Character arrowLeft. Character arrowRight. $b. $a } do: [:char | 
				stream << char asLowercase asString ].
		code := stream contents ]  