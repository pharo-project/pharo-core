isNetworkPresent

	^(self getSystemMetrics: SM_NETWORK) & 1 = 1