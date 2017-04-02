#Pod和Carthage都支持的库

## 制作
1. Xcode创建Dynamic Framework工程：`DemoPodAndCartLib`，并设置主framework为`Shared`
![shared](https://github.com/KoStudio/DemoPodAndCartLib/blob/master/xcode_carthage_shared.png)
2. 制作*.podspec文件放在根目录下
  >命令：`pod spec create DemoPodAndCartLib`
  >然后修改相应配置
  
3. 在根目录下创建Classes 和Assets子目录用于放源码文件和资源文件

4.  在根目录下创建Demo工程，用于写示例 (非必须)

5. 上传到git仓库, 打上tag
  ```ruby
  ...
  git commit -a -m"add to git"
  git push
  git tag 1.8.7
  git push --tags
  ```
  
    **注意：发布之前要修改版本号：** 
   > * `CFBundleShortVersionString`: 如：`1.8.7` //对应 `tags`
   > ![shortversion](https://github.com/KoStudio/DemoPodAndCartLib/blob/master/xcode_carthage_shortversion.png)
   > * `CFBundleVersion` 如：255, (_在`taget`的`Build Settings`中搜索：`CURRENT_PROJECT_VERSION`)
   > ![buildversion](https://github.com/KoStudio/DemoPodAndCartLib/blob/master/xcode_buildversion.png)

6. 将`DemoPodAndCartLib.podspec`发布到私有库`repo`或公有库`trunk`
  + 验证： 
  > 本地验证:  `pod lib lint` 
  > 远程验证:  `pod spec lint`
  
  发布：
  >  `pod repo push KoSpecs  DemoPodAndCartLib.podspec`
  >  或：`pod trunk push KoSpecs  DemoPodAndCartLib.podspec`
  
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
  