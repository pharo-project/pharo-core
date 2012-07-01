tests
testFilePermissions

	| nestedFileToZip fileModified folderModified folderMember fileMember |
	nestedFileToZip := subdir / '_test-zip-file'.
	nestedFileToZip writeStreamDo: [ :stream | stream nextPutAll: 'file contents' ].
	fileModified := nestedFileToZip entry modification asTime.
	folderModified := subdir entry modification asTime.
	folderMember := zip
		addDirectory: subdir fullName
		as: subdir name.
	fileMember := zip	
		addFile: nestedFileToZip fullName
		as: nestedFileToZip name.
	zip writeToFileNamed: zipFile fullName.
	
	self assert: fileMember unixFileAttributes equals: 8r100666.
	self assert: folderMember unixFileAttributes equals: 8r40755.