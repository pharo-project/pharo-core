*network-uri
asURI
	"convert to a Url"
	"'http://www.cc.gatech.edu/' asURI"
	"'msw://chaos.resnet.gatech.edu:9000/' asURI"
	^URI fromString: self