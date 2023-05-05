Pod::Spec.new do |s|
    s.name = 'HumanSignals'
    s.version = '1.0.8'
    s.summary = 'HumanSignals iOS SDK'

    s.homepage = "https://github.com/ivolga-tech/sensors-ios"
    s.license          = { :type => 'Proprietary', :text => 'Copyright 2022 iVolga Ltd. All rights reserved.' }
    s.author = { "$(git config user.name)" => "$(git config user.email)" }
    s.source           = { :git => 'https://github.com/ivolga-tech/sensors-ios.git', :tag => "#{s.version}" }
    s.requires_arc = true
    
    s.platform = :ios, :watchos
    
    s.ios.deployment_target = '11.0'
    s.watchos.deployment_target = '6.2'

    s.ios.dependency 'PostHog'
    
    s.ios.frameworks = 'CoreLocation', 'CoreMotion'
    s.watchos.frameworks = 'CoreLocation', 'CoreMotion'

    s.ios.vendored_frameworks = 'HumanSignals.xcframework'
    s.watchos.vendored_frameworks = 'HumanSignals.xcframework'
end
