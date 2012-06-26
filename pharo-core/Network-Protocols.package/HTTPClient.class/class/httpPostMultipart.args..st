post/get
httpPostMultipart: url args: argsDict
	" do multipart/form-data encoding rather than x-www-urlencoded "

	^HTTPSocket httpPostMultipart: url args: argsDict accept: nil request: ''