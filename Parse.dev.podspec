Pod::Spec.new do |s|
  s.name             = 'Parse'
  s.version          = '1.9.0'
  s.license          =  { :type => 'Commercial', :text => "See https://www.parse.com/about/terms" }
  s.homepage         = 'https://www.parse.com/'
  s.summary          = 'Parse is a complete technology stack to power your app\'s backend.'
  s.authors          = 'Parse'

  s.source           = { :git => "https://github.com/ParsePlatform/Parse-SDK-iOS-OSX.git", :tag => s.version.to_s }

  s.platform = :ios, :osx, :watchos
  s.ios.deployment_target = '7.0'
  s.osx.deployment_target = '10.9'
  s.watchos.deployment_target = '2.0'

  s.requires_arc = true

  s.source_files = 'Parse/*.{h,m}',
                   'Parse/Internal/**/*.{h,m}'
  s.public_header_files = 'Parse/*.h'

  s.osx.exclude_files = 'Parse/PFNetworkActivityIndicatorManager.{h,m}',
                        'Parse/PFProduct.{h,m}',
                        'Parse/PFPurchase.{h,m}',
                        'Parse/Internal/PFAlertView.{h,m}',
                        'Parse/Internal/Product/**/*.{h,m}',
                        'Parse/Internal/Purchase/**/*.{h,m}'
  s.watchos.exclude_files = 'Parse/PFNetworkActivityIndicatorManager.{h,m}',
                            'Parse/PFProduct.{h,m}',
                            'Parse/PFPurchase.{h,m}',
                            'Parse/PFPush.{h,m}',
                            'Parse/PFInstallation.{h,m}',
                            'Parse/Internal/PFAlertView.{h,m}',
                            'Parse/Internal/PFReachability.{h,m}',
                            'Parse/Internal/Product/**/*.{h,m}',
                            'Parse/Internal/Purchase/**/*.{h,m}',
                            'Parse/Internal/Push/**/*.{h,m}',
                            'Parse/Internal/Installation/Controller/*.{h,m}',
                            'Parse/Internal/Installation/Constants/*.{h,m}',
                            'Parse/Internal/Installation/CurrentInstallationController/*.{h,m}',
                            'Parse/Internal/Installation/PFInstallationPrivate.h',
                            'Parse/Internal/Commands/PFRESTPushCommand.{h,m}',

  s.resources = 'Parse/Resources/en.lproj'

  s.ios.frameworks        = 'AudioToolbox',
                            'CFNetwork',
                            'CoreGraphics',
                            'CoreLocation',
                            'QuartzCore',
                            'Security',
                            'StoreKit',
                            'SystemConfiguration'
  s.ios.weak_frameworks   = 'Accounts',
                            'Social'
  s.osx.frameworks = 'ApplicationServices',
                     'CFNetwork',
                     'CoreGraphics',
                     'CoreLocation',
                     'QuartzCore',
                     'Security',
                     'SystemConfiguration'

  s.libraries        = 'z', 'sqlite3'

  s.dependency 'Bolts/Tasks', '~> 1.5'
end
