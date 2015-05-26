logRedirect: url
	^ (self newLogEvent: ZnClientFollowingRedirectEvent)
		target: url;
		emit