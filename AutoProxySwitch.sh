###
# 参考
# http://noctambulator.wordpress.com/2010/07/14/shell-script-to-toggle-automatic-proxy-configuration-settings-in-mac-os-x/
# http://apple.stackexchange.com/questions/57412/how-can-i-trigger-a-notification-center-notification-from-an-applescript-or-shel
# http://stackoverflow.com/questions/11819336/prevent-networksetup-from-asking-password
# 关键字
# Automatic, Proxy, Configuration, Script, shell, networksetup, setautoproxyurl
###

yourProxy="xxxxxxx"
# 从“系统偏好设置->网络设置”中可以看到首选的网络，一般常用的服务名有：Wi-Fi，Airport 和 Ethernet
netPort="Wi-Fi"
if [[ `scutil --proxy | grep ProxyAutoConfigEnable | awk '{ print $3 }'` == "1" ]]; then
    networksetup -setautoproxyurl $netPort " "
    networksetup -setautoproxystate $netPort off
	osascript -e 'display notification "已关闭" with title "自动代理服务"'
else
    networksetup -setautoproxyurl $netPort $yourProxy
	osascript -e 'display notification "已开启" with title "自动代理服务"'
fi