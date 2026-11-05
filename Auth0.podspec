Pod::Spec.new do |s|
  s.name             = 'Auth0'
  s.version          = '3.2.0.1'
  s.summary          = "Auth0 SDK for Apple platforms"
  s.description      = <<-DESC
                        Auth0 SDK for iOS, macOS, tvOS, watchOS and visionOS apps.
                        DESC
  s.homepage         = 'https://github.com/auth0/Auth0.swift'
  s.license          = 'MIT'
  s.authors          = { 'Auth0' => 'support@auth0.com', 'Rita Zerrizuela' => 'rita.zerrizuela@auth0.com' }
  s.source           = { :git => 'https://github.com/Objectway/Auth0.swift.git', :tag => s.version.to_s }
  s.social_media_url = 'https://twitter.com/auth0'
  s.source_files     = 'Auth0/**/*.swift'
  s.resource_bundles = { s.name => 'Auth0/PrivacyInfo.xcprivacy' }
  s.swift_versions   = ['5.0']

  s.dependency 'SimpleKeychain', '1.3.0.1'
  s.dependency 'JWTDecode', '4.0.0.1'

  s.ios.deployment_target   = '18.0'
  s.ios.pod_target_xcconfig = {
    'SWIFT_ACTIVE_COMPILATION_CONDITIONS' => 'WEB_AUTH_PLATFORM PASSKEYS_PLATFORM'
  }

end
