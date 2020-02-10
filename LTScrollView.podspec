
Pod::Spec.new do |s|
  s.name             = 'LTScrollView'
  s.version          = '0.2.1'
  s.summary          = 'LTScrollView'

  s.description      = <<-DESC
 Swift implement ref: http://blog.csdn.net/glt_code/article/details/78576628
                       DESC

  s.homepage         = 'https://github.com/gltwy/LTScrollView'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { '1282990794@qq.com' => '1282990794@qq.com' }
  s.source           = { :git => 'https://github.com/gltwy/LTScrollView.git', :tag => s.version }

  s.ios.deployment_target = '10.0'
  s.source_files = 'Example/LTScrollView/Lib/**/*'
  s.swift_version = ['4.2', '5.0', '5.1']
end
