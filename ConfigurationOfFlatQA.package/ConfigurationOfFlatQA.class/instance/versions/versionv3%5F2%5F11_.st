versionv3_2_11: spec
<version: 'v3.2.11'>
spec for: #common do: [
spec blessing: #release;
repository: 'http://smalltalkhub.com/mc/YuriyTymchuk/ScrapYard/main/'.
spec
	package: 'Renraku' with: 'Renraku-YuriyTymchuk.149';
	package: 'Renraku-Test' with: 'Renraku-Test-YuriyTymchuk.23';
	package: 'Renraku-Help' with: 'Renraku-Help-YuriyTymchuk.3';
	package: 'QualityAssistant' with: 'QualityAssistant-YuriyTymchuk.118';
	package: 'QualityAssistantRecording' with: 'QualityAssistantRecording-Uko.28';
	package: 'QualityAssistant-Test' with: 'QualityAssistant-Test-YuriyTymchuk.2'.
spec postLoadDoIt: #postload ]