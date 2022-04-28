Pod::Spec.new do |s|
    s.name             = 'MobileSensors'
    s.version          = '1.0.0'
    s.summary          = 'MobileSensors iOS SDK'
    s.homepage         = 'https://github.com/ivolga-tech/sensors-ios'
    s.author           = { "pbaskov" => "pbaskov8@gmail.com" }
    s.license          = { :type => 'Proprietary', :text => 'Copyright 2022 iVolga Ltd. All rights reserved.' }
    s.source           = { :git => 'https://github.com/ivolga-tech/sensors-ios.git', :tag => s.version.to_s }
    s.requires_arc = true
    s.platform     = :ios

    s.ios.deployment_target = '11.0'

    s.ios.frameworks = 'CoreLocation', 'CoreMotion'
    
    s.ios.preserve_paths = 'MobileSensors.xcframework'
    s.ios.vendored_frameworks = 'MobileSensors.xcframework'
end
