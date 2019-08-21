#
# Be sure to run `pod lib lint MyCategory.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'MyCategory'
  s.version          = '0.1.0'
  s.summary          = 'ZKMLToolsClassModule组件.'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = <<-DESC
ZKMLToolsClassModule是工具类组件，所有的工具类都是放在这里的.
                       DESC

  s.homepage         = 'https://github.com/liukkk333/LiuMyTools.git'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'liukkk333' => 'liuk@izkml.com' }
  s.source           = { :git => 'https://github.com/liukkk333/LiuMyTools.git', :tag => s.version.to_s }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

  s.ios.deployment_target = '8.0'

  s.source_files = 'MyCategory/Classes/**/*'
  
  # s.resource_bundles = {
  #   'MyCategory' => ['MyCategory/Assets/*.png']
  # }

  # s.public_header_files = 'Pod/Classes/**/*.h'
  # s.frameworks = 'UIKit', 'MapKit'
  # s.dependency 'AFNetworking', '~> 2.3'
  
  s.prefix_header_contents =  '#import "JSONModel.h"','#import "Global.h"','#import "CommonPrefixHeader.h"'
  s.dependency 'JSONModel', '~> 1.8.0'
  s.dependency 'ZKMLPrefixHeaderModule', '~> 0.1.2'

end
