Pod::Spec.new do |s|

  s.name          = 'MobVista'
  s.version       = '1.3.8'
  s.summary       = 'MobVista framework'
  s.homepage      = 'https://github.com/foreverwind/MobVista'
  s.author        = { 'foreverwind' => 'foreverwind229@qq.com' }
  s.platform      = :ios, '7.0'
  s.license = 'MIT'
  s.source        = {
    :git => 'https://github.com/foreverwind/MobVista.git',
    :tag => s.version
  }
  
  s.subspec 'MVSDK' do |mob|
    mob.vendored_frameworks = "MVSDK.framework"
    mob.xcconfig     = { 'FRAMEWORK_SEARCH_PATHS' => '"$(PODS_ROOT)/MobVista/"' }
    mob.framework = 'CoreGraphics', 'Foundation', 'UIKit', 'AdSupport', 'StoreKit', 'QuartzCore', 'CoreLocation', 'CoreTelephony', 'MobileCoreServices', 'Accelerate', 'SystemConfiguration', 'CoreMotion', 'AVFoundation', 'CoreMedia', 'MessageUI', 'MediaPlayer'
    mob.libraries = 'z', 'sqlite3'
    mob.requires_arc = false
  end
end