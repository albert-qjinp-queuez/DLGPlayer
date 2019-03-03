#
#  Be sure to run `pod spec lint DLGPlayer.podspec' to ensure this is a
#  valid spec and to remove all comments including this before submitting the spec.
#
#  To learn more about Podspec attributes see http://docs.cocoapods.org/specification.html
#  To see working Podspecs in the CocoaPods repo see https://github.com/CocoaPods/Specs/
#

Pod::Spec.new do |s|
  s.name         = "DLGPlayer"
  s.version      = "0.0.1"
  s.summary      = "ffmpeg based video Player : DLGPlayer."
  s.description  = 'DLGPlayer making as pod not sure why this is not working'
  s.homepage     = "https://github.com/albert-qjinp-queuez/DLGPlayer"
  # s.screenshots  = "www.example.com/screenshots_1.gif", "www.example.com/screenshots_2.gif"

  s.license      = { :type => "LGPL-3.0", :file => "./LICENSE" }

  s.author             = { "Albert Park" => "albert.q.park@gmail.com" }
  
  s.platform     = :ios
  s.platform     = :ios, "10.0"

  #  When using multiple platforms
  s.ios.deployment_target = "10.0"
  # s.osx.deployment_target = "10.7"
  # s.watchos.deployment_target = "2.0"
  # s.tvos.deployment_target = "9.0"


  s.source       = { :git => "https://github.com/albert-qjinp-queuez/DLGPlayer.git", :tag => "#{s.version}" }


  s.source_files  = "DLGPlayer/*.{h,m}", "DLGPlayer/**/*.{h,m}"
  # s.exclude_files = "Classes/Exclude"
  s.public_header_files = "DLGPlayer/DLGPlayer.h"


  # ――― Resources ―――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――― #
  #
  #  A list of resources included with the Pod. These are copied into the
  #  target bundle with a build phase script. Anything else will be cleaned.
  #  You can preserve files from being cleaned, please don't preserve
  #  non-essential files like tests, examples and documentation.
  #

  # s.resource  = "icon.png"
  # s.resources = "Resources/*.png"

  # s.preserve_paths = "FilesToSave", "MoreFilesToSave"


  # ――― Project Linking ―――――――――――――――――――――――――――――――――――――――――――――――――――――――――― #
  #
  #  Link your library with frameworks, or libraries. Libraries do not include
  #  the lib prefix of their name.
  #

  # s.framework  = "SomeFramework"
  # s.frameworks = "SomeFramework", "AnotherFramework"

  # s.library   = "iconv"
  # s.libraries = "iconv", "xml2"


  # ――― Project Settings ――――――――――――――――――――――――――――――――――――――――――――――――――――――――― #
  #
  #  If your library depends on compiler flags you can set them in the xcconfig hash
  #  where they will only apply to your library. If you depend on other Podspecs
  #  you can include multiple dependencies to ensure it works.

  s.requires_arc = true

  # s.xcconfig = { "HEADER_SEARCH_PATHS" => "$(SDKROOT)/usr/include/libxml2" }
  s.dependency "mobile-ffmpeg-full", "~> 4.2"

end
