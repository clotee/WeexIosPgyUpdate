#
# Be sure to run `pod lib lint WeexIosPgyUpdate.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'WeexIosPgyUpdate'
  s.version          = '0.2.4'
  s.summary          = 'A short description of WeexIosPgyUpdate.'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = <<-DESC
TODO: Add long description of the pod here.
                       DESC

  s.homepage         = 'https://github.com/clotee/WeexIosPgyUpdate'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'clotee@foxmail.com' => 'clotee@foxmail.com' }
  s.source           = { :git => 'https://github.com/clotee/WeexIosPgyUpdate.git', :tag => s.version.to_s }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'
  
  s.platform = :ios, '8.0'
  s.ios.deployment_target = '8.0'

  s.source_files = 'WeexIosPgyUpdate/Classes/*.{h,m}'
  s.dependency 'WeexSDK', '0.18'
  s.dependency 'WeexPluginLoader'
  s.dependency 'Pgyer'
  s.dependency 'PgyUpdate'
  
  # s.resource_bundles = {
  #   'WeexIosPgyUpdate' => ['WeexIosPgyUpdate/Assets/*.png']
  # }

  # s.public_header_files = 'Pod/Classes/**/*.h'
  # s.frameworks = 'UIKit', 'MapKit'
  # s.dependency 'AFNetworking', '~> 2.3'
end
