Pod::Spec.new do |s|
s.name         = 'NXCategories'
s.version      = '0.1.0'
s.summary      = '个人的iOSCategories'
s.homepage     = 'https://github.com/qufeng33/NXCategories'
s.license      = 'MIT'
s.author       = { 'nightx' => 'qufeng33@hotmail.com' }
s.platform     = :ios, '7.0'
s.source       = { :git => 'https://github.com/qufeng33/NXCategories.git', :tag => s.version.to_s }
s.source_files = 'NXCategories/**/*'
s.requires_arc = true
end