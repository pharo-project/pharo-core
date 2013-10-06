finalizeResourceData: anExternalAddressValue
	"We use an intermediate interger for address value, 
	otherwise we would hold on to the NBExternalAddress forever"
	(self value: anExternalAddressValue) free