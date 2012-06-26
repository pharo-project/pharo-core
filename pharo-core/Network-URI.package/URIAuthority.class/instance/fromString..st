private
fromString: authorityString
	| userInfoEnd remainder hostEnd |
	userInfoEnd := authorityString indexOf: $@.
	remainder := userInfoEnd > 0
		ifTrue: [
			userInfo := authorityString copyFrom: 1 to: userInfoEnd-1.
			authorityString copyFrom: userInfoEnd+1 to: authorityString size]
		ifFalse: [authorityString].
	hostEnd := remainder indexOf: $: .
	hostEnd > 0
		ifTrue: [
			host := remainder copyFrom: 1 to: hostEnd-1.
			port := (remainder copyFrom: hostEnd+1 to: remainder size) asNumber]
		ifFalse: [host := remainder]