#
# Be sure to run `pod lib lint MTFMDB.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'MTFMDB'
  s.version          = '0.1.1'
  s.summary          = 'MTFMDB.Framework'

s.description      = <<-DESC
    FMDB 静态库framework 提高编译速度
DESC

s.homepage         = 'https://github.com/BestiOSDev/MTFMDB'
s.license          = { :type => 'MIT', :file => 'LICENSE' }
s.author           = { 'BestiOSDev' => '1060545231@qq.com' }
s.source           = { :git => 'https://github.com/BestiOSDev/MTFMDB.git', :tag => s.version.to_s }

s.ios.deployment_target = '8.0'

if ENV['IS_SOURCE']
    s.source_files = 'MTFMDB/Classes/**/*{h,m}'
    s.public_header_files = 'MTFMDB/Classes/**/*.h'
else
s.ios.vendored_frameworks = 'MTFMDB/Framework/MTFMDB.framework'
end
s.requires_arc = true

s.library = 'sqlite3'
end
