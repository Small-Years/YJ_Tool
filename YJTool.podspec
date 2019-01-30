#
#  Be sure to run `pod spec lint YJTool.podspec' to ensure this is a
#  valid spec and to remove all comments including this before submitting the spec.
#
#  To learn more about Podspec attributes see http://docs.cocoapods.org/specification.html
#  To see working Podspecs in the CocoaPods repo see https://github.com/CocoaPods/Specs/
#

Pod::Spec.new do |s|


  s.name         = "YJTool"
  s.version      = "1.1.6"
  s.summary      = "YJTool 个人使用工具类集合"

   s.description  = <<-DESC 
		个人使用的工具类,帮助在项目中快速开发
                   DESC

  s.homepage     = "http://github.com/Small-Years/YJTool.git"
  # s.screenshots  = "www.example.com/screenshots_1.gif", "www.example.com/screenshots_2.gif"


  # ―――  Spec License  ――――――――――――――――――――――――――――――――――――――――――――――――――――――――――― #
  #
   s.license      = { :type => "MIT", :file => "LICENSE" }


  # ――― Author Metadata  ――――――――――――――――――――――――――――――――――――――――――――――――――――――――― #
  #

  s.author             = { "yangjian" => "18263800587@163.com" }
  
  # ――― Platform Specifics ――――――――――――――――――――――――――――――――――――――――――――――――――――――― #
  #
   s.platform     = :ios, "8.0"


  # ――― Source Location ―――――――――――――――――――――――――――――――――――――――――――――――――――――――――― #
  #
  s.source       = { :git => "https://github.com/Small-Years/YJ_Tool.git", :tag => "1.1.6" }


  # ――― Source Code ―――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――― #
  #s.source_files = "YJTool_Demo/YJ_Tool/UIImage/*.{h,m}","YJTool_Demo/YJ_Tool/CreateView/*.{h,m}","YJTool_Demo/YJ_Tool/Tool/*.{h,m}","YJTool_Demo/YJ_Tool/EmptyData/*.{h,m}"

  #
  s.source_files = "YJTool_Demo/YJ_Tool/YJ_ToolHeader.h"
  s.public_header_files = "YJTool_Demo/YJ_Tool/YJ_ToolHeader.h"
  s.resources = 'YJTool_Demo/YJ_Tool/Resources/*.png'

  s.subspec 'UIImage' do |ss|
	ss.source_files = "YJTool_Demo/YJ_Tool/UIImage/*.{h,m}"
  end

  s.subspec 'CreateView' do |ss|
	ss.source_files = "YJTool_Demo/YJ_Tool/CreateView/*.{h,m}"
  end

  s.subspec 'Tool' do |ss|
	ss.source_files = "YJTool_Demo/YJ_Tool/Tool/*.{h,m}"
  end

  s.subspec 'EmptyData' do |ss|
	ss.source_files = "YJTool_Demo/YJ_Tool/EmptyData/*.{h,m}"
  end

  s.subspec 'Extension' do |ss|
	ss.source_files = "YJTool_Demo/YJ_Tool/Extension/*.{h,m}"
  end
  
  # ――― Project Linking ―――――――――――――――――――――――――――――――――――――――――――――――――――――――――― #
  #
   s.frameworks = "UIKit", "ImageIO"


  # ――― Project Settings ――――――――――――――――――――――――――――――――――――――――――――――――――――――――― #
  #

  # s.requires_arc = true

  # s.xcconfig = { "HEADER_SEARCH_PATHS" => "$(SDKROOT)/usr/include/libxml2" }
  # s.dependency "JSONKit", "~> 1.4"

end
