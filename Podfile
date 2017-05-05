source 'https://github.com/CocoaPods/Specs.git'

platform :ios,'8.0'

#cocoapods使用framework模式，意思就是.a的静态库不支持使用cocoapods管理，在包含swift的项目中，需要使用这样的模式，因为swift不支持静态库，(原因：静态库在编译的时候就打包加入到项目的二进制中，但是目前的iPhone设备中还没有支持对swift的解析，所以不能载静态库中编写swift代码，动态库则可以，因为项目使用swift后会在项目中添加swift解析的动态库到工程中，也就是如此所以使用swift的项目打包出来的ipa体积会变大)
use_frameworks!
inhibit_all_warnings!

#百度地图SDK现在使用的7个framework，为了支持ssl所以还添加了两个.a的静态库，这个时候需要使用如下命令来让cocoapods对静态库支持
pre_install do |installer|
	# workaround for https://github.com/CocoaPods/CocoaPods/issues/3289
	def installer.verify_no_static_framework_transitive_dependencies; end
end

target 'HDPodBMKDemo' do
	pod 'HDPodBMKSDK', :path => ‘../HDPodBMKSDK'
#	pod 'HDPodBMKSDK', :git => ‘https://github.com/erduoniba/HDPodBMKSDK.git'

end

#post_install do |installer|
#    # Replace these with your values
#    project_location = './Pods/Pods.xcodeproj'
#    # 设置使用#{framework_names}对应的target
#    target_names = ['HDPodBMKSDK']
#    # #{framework_names}对应#{Pods}的路径
#    framework_root = './BaiduMapKit/BaiduMapKit'
#    framework_names = [
#    'BaiduMapAPI_Base.framework',
#    'BaiduMapAPI_Cloud.framework',
#    'BaiduMapAPI_Location.framework',
#    'BaiduMapAPI_Map.framework',
#    'BaiduMapAPI_Radar.framework',
#    'BaiduMapAPI_Search.framework',
#    'BaiduMapAPI_Utils.framework',
#    ]
#
#    # Get useful variables
#    project = installer.pods_project
#
#    target_names.each do |target_name|
#        target = project.targets.find { |target| target.to_s == target_name }
#        frameworks_group = project.groups.find { |group| group.display_name == 'Frameworks' }
#        frameworks_build_phase = target.build_phases.find { |build_phase| build_phase.to_s == 'FrameworksBuildPhase' }
#
#        # Add framework to target as "Embedded Frameworks"
#        framework_names.each do |framework_name|
#            framework_ref = frameworks_group.new_file("#{framework_root}/#{framework_name}")
#            frameworks_build_phase.add_file_reference(framework_ref)
#        end
#    end
#end

#post_install do |installer|
#    project_location = './Pods/Pods.xcodeproj'
#    # 设置使用#{framework_names}对应的target
#    target_names = ['HDPodBMKSDK']
#    framework_names = [ 'BaiduMapKit' ]
#
#    project = installer.pods_project
#
#    framework_names.each do |framework_name|
#        frameworks = project.pod_group(framework_name)
#        .children
#        .find { |group| group.name == 'Frameworks' }
#        .children
#
#        target_names.each do |target_name|
#            target = project.targets.find { |target| target.to_s == target_name }
#            frameworks_group = project.groups.find { |group| group.display_name == 'Frameworks' }
#            frameworks_build_phase = target.build_phases.find { |build_phase| build_phase.to_s == 'FrameworksBuildPhase' }
#
#            frameworks.each do |file_ref|
#                frameworks_build_phase.add_file_reference(file_ref)
#            end
#        end
#    end
#end
