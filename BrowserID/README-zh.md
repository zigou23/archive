# 收款二维码合并  
萌新通道->[😉](#给第一次使用Gitee的同学的教程)   
## 原理
扫描二维码后跳转到此页面，然后根据 UA 判断具体平台。  
支付宝为:AlipayClient  
微信为:MicroMessenger  
然后根据平台进行跳转，支付宝可以直接跳转到收款链接，而微信只能跳转到二维码进行付款。  
同理可以添加其他平台的支付方式。  
## 配置
### 1.更换支付宝收款链接  
保存支付宝收款二维码，使用二维码识别软件进行识别，得到链接。  
**得到的链接是大写的，不要进行任何处理或转换成小写**  
然后将 ~~index.html~~[main.js](main.js) 中的变量 alipayURL 改为自己的支付宝收款链接。
### 2.更换微信二维码
保存微信收款二维码，放到 [static/](static/) 文件夹中，并命名为 wechat.png  
### 3.添加 QQ 二维码(可选项)   
将 QQ 收款二维码放到 [static/](static/) 文件夹中,并命名为 qq.png   
将 ~~index.html~~[main.js](main.js) 中的 qqSwitch 改为 true(相应地,不使用的同学请将其改为 false)   
### 4.添加 TIM 二维码(可选项)   
将 TIM 收款二维码放到 [static/](static/) 文件夹中,并命名为 tim.png   
将 ~~index.html~~[main.js](main.js) 中的 timSwitch 改为 true(相应地,不使用的同学请将其改为 false)   
### 3.设置为 Gitee Pages
选择 Settings --> Gitee Pages 设置为 Gitee Pages  
**如果没有通过 ICP 备案的域名建议不要使用自定义域名，会被微信拦截** (于是鄙人直接挂成了静态网页 省钱...) （实测Gitee page微信会提示非官方网站... 开源中国 能麻烦您老人家备个案嘛...）
设置成功后得到链接，使用链接生成二维码即可。   

## 给第一次使用 Gitee 的同学的教程
**(建议 PC 端浏览器打开，使用手机浏览器的同学请点击页面右下角的"Desktop version"切换到桌面版)**
### 1.注册并登录 Gitee 帐号
Sign up + Sign in
### 2.Fork
点击页面右上角的 Fork 并等待其完成
### 3.配置
[同上](#配置)   

ps.作为一名后端,写的很烂,请多多包涵(好多东西都是现学的...),欢迎 pr 或 issue.（原作者的话） 
ps..鄙人就是一个复制粘贴改改的小人物而已,如果您需要的话麻烦也请遵守GPL v3协议 本代码的作者为GitHub上的senventise.（修改者的话）
