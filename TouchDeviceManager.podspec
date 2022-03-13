#
# Be sure to run `pod lib lint TouchDeviceManager.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
    s.name             = 'TouchDeviceManager'
    s.version          = '0.0.2'
    s.summary           = 'TouchDeviceManager health check'
    s.description      = <<-DESC
TODO: Add long description of the pod here.
                       DESC

    s.homepage          = 'https://github.com/HarikanKangbid/TouchDeviceManager'
    s.license          = { :type => 'MIT', :file => 'LICENSE' }
    s.author            = { "Harikan Kangbid" => "MIN.DO@hotmail.com" }
    s.source            = { :git => "https://github.com/HarikanKangbid/TouchDeviceManager.git", :tag => "0.0.2"}
    s.ios.deployment_target = '11.0'
    s.vendored_frameworks = 'TouchDeviceManager.framework'
    s.preserve_paths = 'TouchDeviceManager.framework'
    s.swift_version = '5'
end