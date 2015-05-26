bePunctuation

	| punctuationChars |
	punctuationChars := #($. $, $! $? $; $: $" $' $- $( $) $`).
	predicate := [:char | punctuationChars includes: char].
	negation := [:char | (punctuationChars includes: char) not]