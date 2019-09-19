

Pod::Spec.new do |s|
  s.name             = 'PYJsonViewManager'
  s.version          = '0.1.1'
  s.summary          = 'BaseJsonViewController是一个用OC编写的提供了搜索、插入、编辑、查看路径、复制json/value等功能的Json可视化编辑工具'

  s.description      = <<-DESC
由于网络数据请求下来后，APP端对json原数据的展示并不明朗。 修改网络数据只能通过Charles等抓包工具实现，受到的限制太多，所以诞生了在APP端直接对json进行查看、修改的Json视图工具:BaseJsonViewController。
后续会对BaseJsonViewController进行持续的更新优化，欢迎使用。

作者：李yao~鹏
链接：https://juejin.im/post/5d4f6c80e51d4561f64a07d6
                       DESC

  s.homepage         = 'https://github.com/LiPengYue/PYJsonHandler'
  
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'LiPengYue' => '15076299703@163.com' }
  s.source           = { :git => 'https://github.com/LiPengYue/PYJsonHandler.git', :tag => s.version.to_s }


  s.ios.deployment_target = '8.0'

  s.source_files = 'PYJsonViewManager/Classes/**/*'

s.dependency 'PYBaseView'

#需要包含的图片,xib等资源文件
#s.resources = 'PYJsonViewManager/Classes/**/*.{xib,nib,storyboard,png}'

s.resource_bundles = {
    'PYJsonViewManager' => ['PYJsonViewManager/Classes/**/*.{xib,nib,storyboard,png}']
}
end
