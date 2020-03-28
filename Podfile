
source 'https://github.com/CocoaPods/Specs.git'

platform :ios, '10.0'

use_modular_headers!

target 'TestPodfile' do
  pod 'UMCommon', :podspec => "https://raw.githubusercontent.com/aliriolau/UMengSDK/master/UMCommon.podspec"
  pod 'UMAnalytics', :podspec => "https://raw.githubusercontent.com/aliriolau/UMengSDK/master/UMAnalytics.podspec"
end

post_install do |pi|
  pi.pods_project.targets.each do |t|
    t.build_configurations.each do |config|
      config.build_settings['IPHONEOS_DEPLOYMENT_TARGET'] = '10.0'
    end
  end
end
