#
# Be sure to run `pod lib lint SQDevKit.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|

    s.platform = :ios
    s.ios.deployment_target = '10.0'
    s.name = "SQDevKit"
    s.summary = "Toolkit for iOS developers by Sequenia"
    s.requires_arc = true

    s.version = "1.0.3"
    s.license  = { :type => "MIT", :file => "LICENSE" }
    s.author   = { 'lab-devoloper' => 'vitaly.banik@sequenia.com' }
    s.homepage = "https://github.com/sequenia/SQDevKit"
    s.source = { :git => 'https://github.com/sequenia/SQDevKit', 
                 :tag => "#{s.version}" }

    s.dependency 'SQDifferenceKit', '~> 1.0.1'
    s.dependency 'SwiftyJSON', '~> 5.0.1'

    s.subspec 'SQExtensions' do |extensions|
        core.source_files = 'Extensions/**/*.swift'
        core.dependency 'SwiftyJSON', '~> 5.0.1'
    end

    s.subspec 'SQLists' do |lists|
        core.source_files = 'Lists/**/*.swift'
        core.dependency 'SQDifferenceKit', '~> 1.0.1'
    end

    s.subspec 'SQVUPER' do |vuper|
        core.source_files = 'VUPER/**/*.swift'
        core.dependency 'SQDevKit/SQExtensions'
    end

    s.subspec 'SQOperations' do |operations|
        core.source_files = 'Operations/**/*.swift'
        core.dependency 'SQDevKit/SQExtensions'
    end

    s.subspec 'SQUIKit' do |uikit|
        core.source_files = 'Operations/**/*.swift'
        core.dependency 'SQDevKit/SQExtensions'
        core.dependency 'SQDevKit/SQLists'
        core.dependency 'SQDifferenceKit', '~> 1.0.1'
    end

    s.swift_version = "5.0"

    s.source_files = "Sources/**/*.{swift}"

end