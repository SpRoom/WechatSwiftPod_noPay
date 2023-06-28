#
# Be sure to run `pod lib lint XQCPaySDK.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'WechatSwiftPod_noPay'
  s.version          = '2.0.2.1'
  s.summary          = 'wechat support with not contain pay'
  s.swift_version = '5'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = <<-DESC
  wechat pod framework swift support with not contain pay function
                       DESC

  s.homepage         = 'https://github.com/SpRoom/WechatSwiftPod_noPay'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'spec' => 'spectatornan@gmail.com' }
  s.source           = { :git => 'https://github.com/SpRoom/WechatSwiftPod_noPay.git', :tag => s.version.to_s }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

  #s.ios.deployment_target = '8.0'
  s.platform     = :ios, "12.0"
  s.requires_arc = true
 
 

  s.static_framework = true

  s.libraries = 'c++', 'z'
  s.frameworks = 'Security', 'CoreGraphics', 'WebKit'

  s.vendored_libraries = 'WechatSwiftPod/liba/libWeChatSDK.a'
  s.source_files  = "WechatSwiftPod/liba/*.h", "WechatSwiftPod/liba/*.modulemap"
  s.preserve_path = "WechatSwiftPod/liba/WechatSwiftPod.modulemap"

  # s.source_files = 'WechatSwiftPod/xcframework/**/*'
  # s.exclude_files = 'WechatSwiftPod/xcframework/WechatOpenSDK-XCFramework.xcframework/Info.plist'
  # s.ios.vendored_frameworks = 'WechatSwiftPod/WechatOpenSDK-XCFramework.xcframework'
  # s.source_files  = "WechatSwiftPod/WechatOpenSDK-XCFramework.xcframework/**/*.h"
  
  s.xcconfig = { 'LD_RUNPATH_SEARCH_PATHS' => '$(PODS_ROOT)/WechatSwiftPod' }
  s.pod_target_xcconfig = { 
    'DEFINES_MODULE' => 'YES',
    'OTHER_LDFLAGS' => '-ObjC -all_load',
    # 'BUILD_LIBRARY_FOR_DISTRIBUTION' => 'YES'
   'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'arm64'  # Xcode12的里面因为有arm的模拟器到会有问题podspec 的 pod lib lint 验证不通过
  }
 s.user_target_xcconfig = { 'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'arm64' }  # Xcode12的里面因为有arm的模拟器到会有问题podspec 的 pod lib lint 验证不通过
#  s.user_target_xcconfig = { 'BUILD_LIBRARY_FOR_DISTRIBUTION' => 'YES' }
 
end
