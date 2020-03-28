#
# Be sure to run `pod lib lint ***.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
s.name        = 'UMAnalytics'
s.version     = '6.0.5'
s.summary     = 'UMAnalytics'
s.homepage    = 'https://github.com'
s.license     = { :type => 'MIT', :file => 'LICENSE' }
s.author      = { 'Alirio.Lau' => 'alirio.lau@gmail.com' }
s.source      = { :http => "https://umplus-sdk-download.oss-cn-shanghai.aliyuncs.com/iOS/UMAnalytics/UMAnalytics_6.0.5.zip" }
s.ios.deployment_target = '10.0'

s.vendored_frameworks = ["UMAnalytics.framework"]

s.prepare_command = <<-EOF
rm -rf UMAnalytics.framework/Modules/*
mkdir UMAnalytics.framework/Modules
touch UMAnalytics.framework/Modules/module.modulemap
cat <<-EOF > UMAnalytics.framework/Modules/module.modulemap
framework module UMAnalytics {
    header "MobClick.h"

    export *
}
\EOF
EOF

# pod lib lint xxx.podspec --sources='git@github.com:aliriolau/ALSpec.git,https://github.com/CocoaPods/Specs.git' --allow-warnings
# pod repo push ALSpec xxx.podspec --sources='git@github.com:aliriolau/ALSpec.git,https://github.com/CocoaPods/Specs.git' --allow-warnings
# --use-libraries

end

