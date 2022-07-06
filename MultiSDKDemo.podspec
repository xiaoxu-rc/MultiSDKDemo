#
# Be sure to run `pod lib lint MultiSDKDemo.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'MultiSDKDemo'
  s.version          = '0.1.0'
  s.summary          = 'A short description of MultiSDKDemo.'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = <<-DESC
TODO: Add long description of the pod here.
                       DESC

  s.homepage         = 'https://github.com/xiaoxu-rc/MultiSDKDemo'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'xiaoxu@rongcloud.cn' => 'xiaoxu@rongcloud.cn' }
  s.source           = { :git => 'https://github.com/xiaoxu-rc/MultiSDKDemo.git', :tag => s.version.to_s }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

  s.ios.deployment_target = '10.0'

  s.source_files = 'MultiSDKDemo/Classes/**/*'
  s.resource_bundles = {
    'MultiSDKDemo' => ['MultiSDKDemo/Assets/*.png']
  }
  s.frameworks = 'UIKit', 'MapKit'
  s.pod_target_xcconfig = { 'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'arm64' }
  s.user_target_xcconfig = { 'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'arm64' }

  s.subspec 'MyBaseSDK' do |base|
    base.public_header_files = 'MultiSDKDemo/Classes/MyBaseSDK/**/*.h'
    base.source_files = 'MultiSDKDemo/Classes/MyBaseSDK/**/*'
    base.dependency 'AFNetworking', '3.0'
    base.dependency 'YYModel'
  end
    
  s.subspec 'MyBussinessOne' do |one|
    one.public_header_files = 'MultiSDKDemo/Classes/MyBussinessOne/**/*.h'
    one.source_files = 'MultiSDKDemo/Classes/MyBussinessOne/**/*'
    one.dependency 'MultiSDKDemo/MyBaseSDK'
  end

  s.subspec 'MyBussinessTwo' do |two|
    two.public_header_files = 'MultiSDKDemo/Classes/MyBussinessTwo/**/*.h'
    two.source_files = 'MultiSDKDemo/Classes/MyBussinessTwo/**/*'
    two.dependency 'MultiSDKDemo/MyBaseSDK'
  end
end
