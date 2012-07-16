acessing
url: aSubPath
	| url |
	url :=  'http://code.google.com/feeds/issues/p' asZnUrl.
	url 
		addPathSegment: self project;
		addPathSegments: (($/ split: aSubPath) reject: [ :each| each isEmpty ]).
	^ url