publishUrl
	| url |
	(self confirm: 'Publish playground content to the cloud?')
        ifFalse: [ ^ self ].
    self content ifEmpty: [ 
        self inform: 'Nothing was published because the playground is empty'.
        ^ self ].
    url := GTUrlProvider new post: self content.
    Clipboard clipboardText: url asString.
    self inform: url asString , ' was published and the url was copied to clipboard'