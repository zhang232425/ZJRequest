#
# Be sure to run `pod lib lint ZJRequest.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
    
  s.name             = 'ZJRequest'
  s.version          = '0.1.0'
  s.summary          = 'A short description of ZJRequest.'
  s.homepage         = 'https://github.com/zhang232425/ZJRequest'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'zhang232425' => '519301084@qq.com' }
  s.source           = { :git => 'https://github.com/zhang232425/ZJRequest.git', :tag => s.version.to_s }
  s.ios.deployment_target = '10.0'
  s.source_files = 'ZJRequest/Classes/**/*'
  s.resource_bundles = {
      'ZJRequest' => ['ZJRequest/Assets/**/*']
  }
  s.static_framework = true
  
  s.subspec 'Core' do |ss|
      ss.source_files = 'ZJRequest/Classes/Core/'
      ss.resource_bundles = { 'ZJRequest' => ['ZJRequest/Assets/**/*'] }
      ss.dependency 'ZJDevice'
      ss.dependency 'ZJRegion'
      ss.dependency 'ZJLocalizable'
      ss.dependency 'Moya'
      ss.dependency 'HandyJSON'
      ss.dependency 'SwiftyJSON'
  end
  s.subspec 'RxSwift' do |ss|
      ss.source_files = 'ZJRequest/Classes/RxRequest/'
      ss.dependency 'ZJRequest/Core'
      ss.dependency 'Moya/RxSwift'
  end
  
end

