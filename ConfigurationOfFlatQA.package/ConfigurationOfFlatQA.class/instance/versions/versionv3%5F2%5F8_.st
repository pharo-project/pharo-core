versionv3_2_8: spec
<version: 'v3.2.8'>
spec for: #common do: [
spec blessing: #release;
repository: 'http://smalltalkhub.com/mc/YuriyTymchuk/ScrapYard/main/'.
spec
	package: 'Renraku' with: 'Renraku-YuriyTymchuk.143';
	package: 'Renraku-Test' with: 'Renraku-Test-YuriyTymchuk.21';
	package: 'Renraku-Help' with: 'Renraku-Help-YuriyTymchuk.3';
	package: 'QualityAssistant' with: 'QualityAssistant-YuriyTymchuk.114';
	package: 'QualityAssistantRecording' with: 'QualityAssistantRecording-Uko.28';
	package: 'QualityAssistant-Test' with: 'QualityAssistant-Test-YuriyTymchuk.2'.
spec postLoadDoIt: #postload ]