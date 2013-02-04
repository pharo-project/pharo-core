gravatar
retrieveGravatarFromMail: email size: size
	| response |
	response := ZnClient new
		timeout: 10;
		url: 'http://www.gravatar.com/avatar';
		addPathSegment: (ZnDigestAuthenticator md5Hash: email);
		queryAt: #s put: size asString;
		queryAt: #d put: #retro;
		get.
	^ ImageMorph fromStream: response readStream