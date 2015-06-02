takeCommentFromView
	| conf |
	conf := RubConfigurationChange new.
	conf configurationBlock: [ :view | view textArea announce: (RubTextAcceptRequest morph: view textArea) ].
	self classCommentTextModel announce: conf