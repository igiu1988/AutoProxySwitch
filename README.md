AutoProxySwith
==============

自动代理切换

最近用Charles比较多，另外自己又用着曲径的代理，总是要在系统偏好设置里“打开-关闭”自动代理，总之就是费劲，于是上网找了一下，其实相关的内容还挺多的。



## Useage
运行即切换。

## Install
1. 配置`AutoProxySwith.sh`里的`yourProxy`变量为你的自动代理地址。
2. 配置`AutoProxySwith.sh`里的`netPort`变量为你的首选网络服务，常见的网络服务在代码理有注释。
2. 打开终端执行`sudo chmod u+s /usr/sbin/networksetup`，为networksetup永久提升权限。因为上面的script用到了networksetup，这个工具在执行特定操作时需要提升权限。
3. 使用Automator创建一个Run Shell Script应用，script内容为`AutoProxySwith.sh`里的内容
4. 现在导出app应用，放到你喜欢的地方。使用spotlight搜索关键字“AutoProxySwitch”，即可找到该应用


## 主要参考
1. http://noctambulator.wordpress.com/2010/07/14/shell-script-to-toggle-automatic-proxy-configuration-settings-in-mac-os-x/
2. http://apple.stackexchange.com/questions/57412/how-can-i-trigger-a-notification-center-notification-from-an-applescript-or-shel
3. http://stackoverflow.com/questions/11819336/prevent-networksetup-from-asking-password
