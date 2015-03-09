deliverData: aByteArray signalProgress: aBoolean
	^ (ZnClient new
			beOneShot;
			timeout: 5;
			signalProgress: aBoolean;
			numberOfRetries: 0;
			url: self remoteURL;
			enforceHttpSuccess: true;
			ifFail: [ :exception | deliveryQueue nextPut: aByteArray ];
			entity: (ZnByteArrayEntity bytes: aByteArray);
			put;
			response)