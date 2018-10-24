#
#
# Be sure to run `pod lib lint openweathermap-swift-sdk.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'openweathermap-swift-sdk'
  s.version          = '0.1.0'
  s.summary          = 'Unofficial Swift SDK for OpenWeatherMap.'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = <<-DESC
	Unofficial Swift SDK for OpenWeatherMap. It provides JSON model classes
	and related REST API GET methods.
                       DESC

  s.homepage         = 'https://github.com/rocxteady/openweathermap-swift-sdk'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'Ulaş Sancak' => 'ulas.sancak@hotmail.com.tr' }
  s.source           = { :git => 'https://github.com/rocxteady/openweathermap-swift-sdk.git', :tag => s.version.to_s }
  # s.social_media_url = 'https://twitter.com/rocxteady'

  s.ios.deployment_target = '9.0'

  s.source_files = 'openweathermap-swift-sdk/Classes/**/*.swift'
  
  # s.resource_bundles = {
  #   'openweathermap-swift-sdk' => ['openweathermap-swift-sdk/Assets/*.png']
  # }
  
  s.pod_target_xcconfig = {
    'SWIFT_VERSION' => '3.0',
  }

  #s.public_header_files = 'openweathermap-swift-sdk/Classes/**/*.h'
  # s.frameworks = 'UIKit', 'MapKit'
  s.dependency 'Alamofire', '~> 4.4'
  s.dependency 'ObjectMapper', '~> 3.3'
end
