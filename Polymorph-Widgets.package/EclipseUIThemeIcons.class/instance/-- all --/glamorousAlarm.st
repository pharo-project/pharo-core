glamorousAlarm
	^ self icons
			at: #'glamorousAlarm'
			ifAbsentPut:[ Form fromBinaryStream: (Base64MimeConverter mimeDecodeToBytes: self glamorousAlarmIconContents readStream) ].