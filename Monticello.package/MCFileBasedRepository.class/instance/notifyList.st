as yet unclassified
notifyList
	(self includesFileNamed: 'notify') ifFalse: [^ #()].
	^ self readStreamForFileNamed: 'notify' do:
		[:s | s upToEnd  lines]