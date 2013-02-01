gravatar
retrieveGravatarFromMail: email size: size
	| response |

	response := ZnClient new 
		timeout: 10;
		get: 'http://www.gravatar.com/avatar/', 
			(ZnDigestAuthenticator md5Hash: email), 
			'?s=', size asString,'&d=retro'.
			
	^ (ImageMorph fromStream: response readStream)