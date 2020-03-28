#
# Be sure to run `pod lib lint ***.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
s.name        = 'UMCommon'
s.version     = '2.1.1'
s.summary     = 'UMCommon'
s.homepage    = 'https://github.com'
s.license     = { :type => 'MIT', :file => 'LICENSE' }
s.author      = { 'Alirio.Lau' => 'alirio.lau@gmail.com' }
s.source      = { :http => "https://umplus-sdk-download.oss-cn-shanghai.aliyuncs.com/iOS/UMCommon/UMCommon_2.1.1.zip" }
s.ios.deployment_target = '10.0'

s.vendored_frameworks = ["UMCommon.framework"]

s.framework   = ["CoreTelephony", "SystemConfiguration"]
s.libraries   = ["sqlite3", "z"]

s.prepare_command = <<-EOF
rm -rf UMCommon.framework/Modules/*
mkdir UMCommon.framework/Modules
touch UMCommon.framework/Modules/module.modulemap
cat <<-EOF > UMCommon.framework/Modules/module.modulemap
framework module UMCommon {
    header "UMCommon.h"
    header "UMConfigure.h"
    
    link "z"
    link "sqlite3"
    link framework "CoreTelephony"
    link framework "SystemConfiguration"

    export *
}
\EOF
EOF

# pod lib lint xxx.podspec --sources='git@github.com:aliriolau/ALSpec.git,https://github.com/CocoaPods/Specs.git' --allow-warnings
# pod repo push ALSpec xxx.podspec --sources='git@github.com:aliriolau/ALSpec.git,https://github.com/CocoaPods/Specs.git' --allow-warnings
# --use-libraries

end

