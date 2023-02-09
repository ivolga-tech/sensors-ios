Pod::Spec.new do |s|
    s.name = 'HumanSignals'
    s.version = '1.0.7'
    s.summary = 'HumanSignals iOS SDK'

    s.homepage = "https://github.com/ivolga-tech/sensors-ios"
    s.license          = { :type => 'Proprietary', :text => 'Copyright 2022 iVolga Ltd. All rights reserved.' }
    s.author = { "$(git config user.name)" => "$(git config user.email)" }
    s.source           = { :git => 'https://github.com/ivolga-tech/sensors-ios.git', :tag => "#{s.version}" }
    s.requires_arc = true
    s.platform = :ios
    s.ios.deployment_target = '11.0'

    s.dependency 'PostHog'
    s.ios.frameworks = 'Combine', 'CoreLocation', 'CoreMotion'
    
    s.ios.vendored_frameworks = 'HumanSignals.xcframework'
end
