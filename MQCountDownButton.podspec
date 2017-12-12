Pod::Spec.new do |s|
  s.name             = 'MQCountDownButton'
  s.version          = 'v0.0.4'
  s.summary          = 'MQCountDownButton For swift CountDownButton'

  s.description      = <<-DESC
  			CountDownButton.For swift CountDownButton.a swift count down button
                       DESC

  s.homepage         = 'https://github.com/AidyBao/MQCountDownButton'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'AidyBao' => '281907061@qq.com' }
  s.source           = { :git => 'https://github.com/AidyBao/MQCountDownButton.git', :tag => s.version.to_s }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

  s.ios.deployment_target = '9.0'

  s.source_files     = 'MQCountDownButton/*'
  s.frameworks       = 'Foundation', 'UIKit'
end