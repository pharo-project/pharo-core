properties-setting
setFileTypeToObject
	"On the Macintosh, set the file type and creator of this file to be a Pharo object file. On other platforms, do nothing. Setting the file type allows Pharo object files to be sent as email attachments and launched by double-clicking. On other platforms, similar behavior is achieved by creating the file with the '.sqo' file name extension."

	self fullName asFileReference setMacType: 'SOBJ' creator: 'FAST'.
