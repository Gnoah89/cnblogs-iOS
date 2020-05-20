# Uncomment the next line to define a global platform for your project
source 'https://github.com/CocoaPods/Specs.git'
platform :ios, '9.0'

inhibit_all_warnings!
use_frameworks!

workspace 'iCnblogs.xcworkspace'


def workspace_pods

	pod 'Alamofire'

end


target 'CNBlog' do
  workspace_pods
 
end

target 'CnBlogs-iOS' do
  workspace_pods
  pod 'PKHUD', '~> 5.0'
  pod "PromiseKit"
  # Pods for CnBlogs-iOS

end

 
target 'Compose' do 
	project 'Feature/Compose/Compose.xcodeproj'

	workspace_pods
end 


target 'Login' do
  project 'Feature/Login/Login.xcodeproj'
  pod "PromiseKit"
  pod 'PKHUD', '~> 5.0'
end
