shortCuts
	"Answers a dictionary of the shortcuts usable in debugger"

	|shortCuts|

	shortCuts := Dictionary new.
		
	shortCuts at: $r command put: [self toolbar restartAction].
	shortCuts at: $p command put: [self toolbar resumeAction].
	shortCuts at: $t command put: [self toolbar stepOverAction].
	shortCuts at: $t command shift put: [self toolbar stepThroughAction].
	shortCuts at: $e command put: [self toolbar stepIntoAction].
	shortCuts at: $w command put: [self toolbar whereIsAction].
	
	shortCuts at: $n command put: [self toolbar browseSendersOfMessages].
	shortCuts at: $m command put: [self toolbar browseMessages].
	shortCuts at: $i command put: [self toolbar methodHierarchy].
	shortCuts at: $v command put: [self toolbar browseVersions].
	
	shortCuts at: $n command shift put: [self toolbar browseClassRefs].
	shortCuts at: $b command put: [self toolbar browseMethodFull].
	
	^shortCuts