Pod::Spec.new do |s|
  s.name     = 'GoneVisible'
  s.version  = '1.2.0'
  s.swift_version  = '4.0'
  s.license  = 'MIT'
  s.summary  = 'GoneVisible is a UIView extension that uses AutoLayout to add "gone" state like Android.'
  s.description      = <<-DESC
                         GoneVisible is a UIView extension that uses AutoLayout to add "gone" state like Android.
                         You can easily change the size constraint constant of UIView to 0 without adding IBOutlet property of size constraint.
GoneVisible supports iOS and is written in Swift.
                       DESC
  s.screenshots      = "https://github.com/terutoyamasaki/GoneVisible/blob/master/demo.gif?raw=true"
  s.pod_target_xcconfig = { 'SWIFT_VERSION' => '4.0' }
  s.homepage = 'https://github.com/snoozelag/GoneVisible'
  s.author   = { 'Teruto Yamasaki' => 'y.teruto@gmail.com' }
  s.source   = { :git => 'https://github.com/snoozelag/GoneVisible.git', :tag => "v#{s.version}" }
  s.social_media_url = 'https://twitter.com/snoozelag'
  s.source_files = 'GoneVisible/*.swift'
  s.ios.frameworks = 'Foundation', 'UIKit'
  s.ios.deployment_target = '8.0'
  s.requires_arc = true
end
