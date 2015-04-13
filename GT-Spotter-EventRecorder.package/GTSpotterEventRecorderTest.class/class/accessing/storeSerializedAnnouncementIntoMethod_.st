storeSerializedAnnouncementIntoMethod: aSymbol
	"self storeSerializedAnnouncementIntoMethod: #version2"
	| methodSource |
	methodSource := (String streamContents: [ :aStream |
		aStream 
			nextPutAll: aSymbol asString; cr; 
			tab; 
			nextPutAll: '"Automatically created by class method #storeSerializedAnnouncementIntoMethod: ';
			print: aSymbol;
			nextPut: $.;
			cr; tab;
			nextPutAll: 'It is a serialized event recorder announcement GTSpotterRecorderDataAnnouncement.';
			cr; tab;
			nextPutAll: 'It contatins all instances of the recorder events."';
			cr; tab;
			nextPutAll: '<spotterEventRecorderSerializedData>';
			cr; tab;
			nextPutAll: '^ '.
		self serializeAnnouncementWithAllEvents storeOn: aStream. ]).
	self compile: methodSource classified: 'serialized data'.