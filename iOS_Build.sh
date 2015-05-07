xcodebuild -alltargets clean

rm -rf "./JenkinsBuild/*"

xcodebuild -target Hello Jenkins PROVISIONING_PROFILE="f90443f8-f1e2-46bf-9fd5-063419a3b060" CONFIGURATION_BUILD_DIR=JenkinsBuild

rm -rf "./JenkinsArchive/*"

xcodebuild -scheme Hello Jenkins archive PROVISIONING_PROFILE="f90443f8-f1e2-46bf-9fd5-063419a3b060" CODE_SIGN_IDENTITY="iPhone Distribution: Nichapat Samaisut (F6UN72J869)" -archivePath ./JenkinsArchive/Hello Jenkins.xcarchive

rm -rf "./JenkinsIPAExport/*"

xcodebuild -exportArchive -exportFormat IPA -exportProvisioningProfile iOS\ Team\ Provisioning\ Profile:\ com.igetweb.Hello-Jenkins -archivePath ./JenkinsArchive/HelloJenkins.xcarchive -exportPath ./JenkinsIPAExport/Hello Jenkins.ipa