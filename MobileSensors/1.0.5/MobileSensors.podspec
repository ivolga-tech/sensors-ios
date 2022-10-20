Pod::Spec.new do |s|
    s.name = 'MobileSensors'
    s.version = '1.0.5'
    s.summary = 'MobileSensors iOS SDK'

    s.homepage = "https://github.com/pbaskov/TestFramework"
    s.license          = { :type => 'Proprietary', :text => 'Copyright 2022 iVolga Ltd. All rights reserved.' }
    s.author = { "$(git config user.name)" => "$(git config user.email)" }
    s.source           = { :git => 'https://github.com/ivolga-tech/sensors-ios.git', :tag => "#{s.version}" }
    s.requires_arc = true
    s.platform = :ios
    s.ios.deployment_target = '11.0'

    s.dependency 'PostHog'
    s.ios.frameworks = 'Combine', 'CoreLocation', 'CoreMotion'
    
    s.ios.vendored_frameworks = 'MobileSensors.xcframework'
end
