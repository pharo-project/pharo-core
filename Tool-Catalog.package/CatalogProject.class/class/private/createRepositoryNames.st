createRepositoryNames
	^ Dictionary new
		at: 'http://smalltalkhub.com/mc/Pharo/MetaRepoForPharo50/main' put: 'Pharo5.0';
		at: 'http://smalltalkhub.com/mc/Pharo/MetaRepoForPharo40/main' put: 'Pharo4.0';
		at: 'http://smalltalkhub.com/mc/Pharo/MetaRepoForPharo30/main' put: 'Pharo3.0';
		at: 'http://www.squeaksource.com/MetacelloRepository' put: 'Unsorted';
		yourself