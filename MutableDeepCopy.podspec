#
# Be sure to run `pod lib lint MutableDeepCopy.podspec' to ensure this is a
# valid spec and remove all comments before submitting the spec.
#
# Any lines starting with a # are optional, but encouraged
#
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = "MutableDeepCopy"
  s.version          = "1.0.0"
  s.summary          = "MutableDeepCopy make all node mutable object in NSArray and NSDictionary."
  s.description      = <<-DESC
                       

                       * Markdown format.
                       * Don't worry about the indent, we strip it!
                       NSArray and NSDictionary has 'mutableCopy', it only apply their children.
                       I need to all NSDictionary and NSArray instance convert mutable things.
                       CFPropertyListCreateDeepCopy does not works with NSNull.

                        Sorry, I do not provide examples now.
  s.homepage         = "https://github.com/kimjj81/MutableDeepCopy"
  # s.screenshots     = "www.example.com/screenshots_1", "www.example.com/screenshots_2"
  s.license          = 'MIT'
  s.author           = { "KimJeongJin" => "kimjeongjin@gmail.com" }
  s.source           = { :git => "https://github.com/kimjj81/MutableDeepCopy.git", :tag => s.version.to_s }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

  s.platform     = :ios, '4.0'
  s.requires_arc = true

  s.source_files = 'Pod/Classes/**/*'
  s.resource_bundles = {
    'MutableDeepCopy' => ['Pod/Assets/*.png']
  }

  # s.public_header_files = 'Pod/Classes/**/*.h'
  # s.frameworks = 'UIKit', 'MapKit'
  # s.dependency 'AFNetworking', '~> 2.3'
end
