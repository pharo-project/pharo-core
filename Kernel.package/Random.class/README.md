This Random Number Generator graciously contributed by David N. Smith.  It is an adaptation of the Park-Miller RNG which uses Floats to avoid the need for LargeInteger arithmetic.

If you just want a quick random integer, use:
		10 atRandom
Every integer interval can give a random number:
		(6 to: 12) atRandom
SequenceableCollections can give randomly selected elements:
		'pick one of these letters randomly' atRandom
SequenceableCollections also respond to shuffled, as in:
		($A to: $Z) shuffled

The correct way to use class Random is to store one in an instance or class variable:
		myGenerator := Random new.
Then use it every time you need another number between 0.0 and 1.0 (excluding)
		myGenerator next
You can also generate a positive integer
		myGenerator nextInt: 10