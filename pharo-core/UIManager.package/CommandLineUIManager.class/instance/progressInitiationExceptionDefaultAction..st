ui requests
progressInitiationExceptionDefaultAction: anException

	| result |

	result := anException workBlock value: DummySystemProgressItem new.

	anException resume: result