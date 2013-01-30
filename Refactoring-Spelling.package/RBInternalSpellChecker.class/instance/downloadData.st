private
downloadData
	"Download data from a server."
	
	ZnClient new
 		systemPolicy;
		url: self url;
		downloadTo: self directory