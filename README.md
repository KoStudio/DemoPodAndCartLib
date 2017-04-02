# DemoPodAndCartLib
A Demo for create both pod and carthage supportted lib.

#Pod和Carthage都支持的库

## 制作
1. Xcode创建Dynamic Framework工程：`DemoPodAndCartLib`，并设置主framework为`Shared`
2. 制作*.podspec文件放在根目录下
  >命令：`pod spec create DemoPodAndCartLib`
  >然后修改相应配置
  
3. 在根目录下创建Classes 和Assets子目录用于放源码文件和资源文件

4.  在根目录下创建Demo工程，用于写示例 (非必须)

5. 上传到git仓库, 打上tag
    **注意：发布之前要修改版本号：** 
   > * `CFBundleShortVersionString`: 如：`1.8.7` //对应 `tags`
   > * `CFBundleVersion` 如：255, (_在`taget`的`Build Settings`中搜索：`CURRENT_PROJECT_VERSION`)

6. 将*.podspec发布到私有库repo或公有库trunk
  > + 验证： `pod lib lint`(本地) 和 `pod spec lint`(远程)
  > + `pod repo push KoSpecs  DemoPodAndCartLib.podspec`
  
  ##使用
  + Carthage
    > `git "https://github.com/KoStudio/DemoPodAndCartLib.git" `
    > `carthage update --platform iOS`
  
  + Pod
  _可能需要运行一次`pod repo KoSpecs`或删除`~/Library/Caches/CocoaPods/`下的`search_index.json`_
      
	1. 命令行中查询：
       > `pod search DemoPodAndCartLib`
          
	2. podfile中使用
	     >   `pod 'DemoPodAndCartLib' `
       > `pod install`
  
