private
handleLoginResult: aResultString
	"parse the result returned from a google authentification request. 
	see http://code.google.com/apis/accounts/docs/AuthForInstalledApps.html#Request"
	
	| tokens |
	
	tokens := Character lf split: aResultString contents trimRight.
	tokens := tokens gather: [ :each | $= split: each ].
	tokens := Dictionary newFromPairs: tokens.
	
	token := tokens at: #Auth ifAbsent: [ Error signal: 'Invalid login' ].