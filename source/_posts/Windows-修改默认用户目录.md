---
title: Windows 修改默认用户目录
tag: [windows]
date: 2022-02-16 11:31:42
category: Windows
tag: [windows, optimize]
---


## 说明

安装`Windows`系统时，将默认的用户目录调整至非系统盘。



## 步骤

### 安装系统

当 windows 连接到网络的时候有时 Sysprep 会失败，所以在进入 Audit Mode 之前，全程关闭网络连接

安装上 windows，重启电脑之后，当进入区域选择界面时，按下 Ctrl Shift F3 

这时 windows 会重启，进入 Audit Mode，然后显示一个 System Preparation Tool，将它关闭

### 配置用户目录

现在可以将电脑连接到网络了。

接下来要使用 System Preparation Tool (Sysprep) 工具来设置用户路径。这个工具会执行一个 XML 文件中的配置（也就是 unattended answer file）

```xml
<?xml version="1.0" encoding="utf-8"?>
<unattend xmlns="urn:schemas-microsoft-com:unattend">
  <settings pass="oobeSystem">
    <component name="Microsoft-Windows-Shell-Setup" processorArchitecture="amd64" publicKeyToken="31bf3856ad364e35" language="neutral" versionScope="nonSxS" xmlns:wcm="http://schemas.microsoft.com/WMIConfig/2002/State" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance">
      <FolderLocations>
        <ProfilesDirectory>D:\Users</ProfilesDirectory>
      </FolderLocations>
    </component>
  </settings>
</unattend>
```

Windows 以字母来标识盘符，但是当安装了 windows 重启之后，本来你想把用户目录安装到 d 盘，但这个盘符可能会发生改变，这个时候就会失败。

所以为了保证你的 d 盘盘符不变，你需要给他手动设置一下盘符，在 Audit Mode 你可以使用磁盘管理工具，先手动的将 d 盘改成 w 盘，再把它改回 d 盘

将这个 XML 文件保存到磁盘根目录（不能是 C 盘），例如D:\relocate.xml

### 执行配置

以管理员模式运行 cmd ，首先，确保 WMP Network Sharing Service 已停止运行

```powershell
net stop wmpnetworksvc
```

然后运行命令：

```powershell
%windir%\system32\sysprep\sysprep.exe /oobe /reboot /unattend:d:\relocate.xml
```

上述命令告诉系统从 Windows\System32\Sysprep 运行 Sysprep，执行 D:/relocate.xml 中的指令，为 OOBE（the firlst boot of newly installed Windows） 重启准备系统，最后重启

然后就继续安装配置系统，之后新用户都会在 D:/Users 这个目录下新建

## 参考

https://*meta.appinn.net/t/topic/18899*
