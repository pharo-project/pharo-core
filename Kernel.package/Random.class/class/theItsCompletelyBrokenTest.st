testing
theItsCompletelyBrokenTest
	"Random theItsCompletelyBrokenTest"
	"The above should print as...
	(0.149243269650845 0.331633021743797 0.75619644800024 0.393701540023881 0.941783181364547 0.549929193942775 0.659962596213428 0.991354559078512 0.696074432551896 0.922987899707159 )
	If they are not these values (accounting for precision of printing) then something is horribly wrong: DO NOT USE THIS CODE FOR ANYTHING. "
	| rng |
	rng := Random new.
	rng seed: 2345678901.
	^ (1 to: 10) collect: [:i | rng next]