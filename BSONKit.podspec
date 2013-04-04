#
# Be sure to run `pod spec lint BSONKit.podspec' to ensure this is a
# valid spec.
#
# Remove all comments before submitting the spec. Optional attributes are commented.
#
# For details see: https://github.com/CocoaPods/CocoaPods/wiki/The-podspec-format
#
Pod::Spec.new do |s|
  s.name         = "BSONKit"
  s.version      = "1.0.1"
  s.summary      = "The BSONDecoder is an Objective-C framework for decoding binary JSON according to the BSON specification http://bsonspec.org"
  s.homepage     = "https://github.com/tib/BSONKit.git"

  s.license      = { :type => 'Free, no license', :text => '' }
  s.author       = {
    "Mattias Levin" => "mattias.levin@gmail.com",
    "Adam Wallner"  => "wallner@bitbaro.hu",
    "Tibor Bödecs"  => "mail.tib@gmail.com"
  }
  s.source       = { :git => "https://github.com/tib/BSONKit.git", :tag => "1.0.1"  }
  s.platform     = :ios, '4.0'
  s.source_files = 'BSONKit', 'BSONKit/*.{h,m}'
end
