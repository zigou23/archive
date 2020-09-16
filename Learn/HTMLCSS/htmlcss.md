# HTML

```html
<!DOCTYPE html> 文档声明html5
<html lang="en">  指定html 语言种类en/zh-CN
    <head> 头部(不显示)
        <meta charset="UTF-8" /> 字符集
    	<title>标题</title>
    	<style> /*css*/
            h1{more from css}
            .red{color: red;}
        </style>
    </head>
    <body> 身体(显示)
        <h1>大标题</h1> 更多在下方
    </body>
</html>
```

## 常用标签

排版标签h1-h6

段落标签p

盒子标签span/div(一行多个与一个)

### 文本格式化标签

| 字体         | 写法1   | 写法2          |
| ------------ | ------- | -------------- |
| **粗体**     | b       | strong         |
| *斜体*       | i       | em             |
| ~~删除线~~   | s       | del            |
| 下划线       | u       | ins            |
| 上标sup      | 下标sub | 推荐此列       |
| 预格式化文本 | pre     | 可读回车、空格 |

### img图像标签

```html
<img src="https://a.com/pay.png" alt="你看不了图片吧" title="鼠标悬停文本" width="150px" border="2">
```

| 属性         | 描述                         |
| ------------ | ---------------------------- |
| src          | URL 链接/本地 图像路径       |
| alt          | 图像不能显示时替换的**文本** |
| title        | 鼠标悬停**文本**             |
| width/height | px 设置图像宽高              |
| border       | 图像外边框宽度               |

### a链接标签

```html
<a href="#1" target="">返回顶部</a>
```

| href   | 链接                                              |
| ------ | ------------------------------------------------- |
| target | `_blank`新窗口/`_self`页面内跳转，留空默认`_self` |
| name   | 对读者不可见，可用id替代                          |

### 特殊字符

| 殊字符 | 描述     | 字符代码   |
| ------ | -------- | ---------- |
|        | 空格符   | `&nbsp;`   |
| <      | 小于号   | `&lt;`     |
| >      | 大于号   | `&gt;`     |
| &      | 和号     | `&amp;`    |
| ¥      | 人民币   | `&yen;`    |
| ©      | 版权     | `&copy;`   |
| ®      | 注册商标 | `&reg;`    |
| °      | 摄氏度   | `&deg;`    |
| ±      | 正负号   | `&plusmn;` |
| ×      | 乘号     | `&times;`  |
| ÷      | 除号     | `&divide;` |
| ²      | 平方     | `&sup2;`   |
| ³      | 立方     | `&sup3;`   |

## 列表标签

包含无序ul 有序ol 自定义dl

### 无序列表ul

```html
<ul>   li之间相当于一个容器,可以容纳所有元素
	<li>香蕉</li>
	<li>苹果</li>
</ul>
```

### 有序列表ol<sub>用的少</sub>

```html
<ol>
	<li>美国</li>
    <li>英国</li>
</ol>
```

### 自定义列表dl

```html
<dl>
	<dt>北京</dt>
    	<dd>昌平区</dd>
    	<dd>海淀区</dd>
   	<dt>山东</dt>
    	<dd>潍坊</dd>
    	<dd>济南</dd>
</dl>
```

### 列表总结

| 标签名      | 定义       | 说明                                 |
| ----------- | ---------- | ------------------------------------ |
| `<ul></ul>` | 无序标签   | 里面只能包含`<li> `没有顺序 最常用   |
| `<ol></ol>` | 有序标签   | 里面只能包含`<li> `有顺序 使用情况少 |
| `<dl></dl>` | 自定义列表 | 里面有俩兄弟dt和dd                   |

现在没有学布局，只要保证2点：

1. 学会什么时候用无序列表ul，自定义列表dl
2. 怎么写
3. 布局css暂不需要了解

## 表格标签table

```html
<table border="2" cellspacing="0" width="500" height="80">
    <tr><td>...</td></tr>
</table>
```

| 属性名      | 含义                                          | 属性值                                        |
| ----------- | --------------------------------------------- | :-------------------------------------------- |
| border      | 设置表格边框                                  | 像素值(默认border="0")                        |
| cellspacing | 设置单元格-与单元格边框之间的空白间距         | 像素值(默认2像素)--每个格子与它四个外边框间距 |
| cellpadding | 设置单元格**内容**-与单元格边框之间的空白间距 | 像素值(默认1像素)--文字与它四个边框间距       |
| width       | 设置表格宽度                                  | 像素值                                        |
| height      | 设置表格高度                                  | 像素值                                        |
| align       | 设置表格在网页中的水平对齐方式                | left/center/right                             |

### 合并单元格

th td属性

| 跨行合并 | rowspan跨行合并为第一行与第二行合并 | 跨行数 |
| -------- | ----------------------------------- | ------ |
| 跨列合并 | colspan跨列合并为第一列与第二列合并 | 跨列数 |

```html
<table border="2" cellspacing="0" width="500" height="80">
	<tr>
    	<td>姓名</td><td>年龄</td><td>性别</td>
        <td rowspan="2">照片<b class="red">(跨行)</b></td><!-- 跨-行-合并 -->
    </tr>
    <tr>
    	<td>地址</td>
        <td colspan="2">xxxx<b class="red">(跨列)</b></td><!-- 跨-列-合并 -->
    </tr>
</table>
```

<table border="2" cellspacing="0" width="500" height="80">
	<tr>
    	<td>姓名</td><td>年龄</td><td>性别</td>
        <td rowspan="2">照片<b class="red">(跨行)</b></td><!-- 跨-行-合并 -->
    </tr>
    <tr>
    	<td>地址</td>
        <td colspan="2">xxxx<b class="red">(跨列)</b></td><!-- 跨-列-合并 -->
    </tr>
</table>

### 总结表格

| 标签名                       | 定义           | 说明                                 |
| ---------------------------- | -------------- | ------------------------------------ |
| `<table>`                    | 表格标签       | 四方盒子                             |
| `<tr>`                       | 表格行标签     | 在table内部才有意义                  |
| `<td>`                       | 单元格标签     | 他是个容器及元素，可以放任何东西     |
| `<th>`                       | 表头单元格标签 | 他还是一个单元格，但里面字会居中加粗 |
| `<caption>`                  | 表格标题       | 跟着表格一起走                       |
| `<rowspan>`跨行`<colspan>`列 | 合并属性       | 用来合并单元格                       |

### 表格拓展

- 表头`<thead>`必须拥有`<tr>`标签
- 表身`<tbody>`表格划分结构
- 表尾`<tfoot>`仅检查时能看出来

```html
<table border="1">
	<thead> <tr> <th>姓名</th> <th>性别</th> </tr> </thead>
	<tbody> <tr> <td>老王</td> <td>女的</td> </tr> </tbody>
	<tfoot> <tr> <td>地址</td> <td>演唱会</td> </tr> </tfoot>
</table>
```

<table border="1" align="center">
	<thead> <tr> <th>姓名</th> <th>性别</th> </tr> </thead>
	<tbody> <tr> <td>老王</td> <td>女的</td> </tr> </tbody>
	<tfoot> <tr> <td>地址</td> <td>演唱会</td> </tr> </tfoot>
</table>


## 表单标签

### input控件(重点)<sub>单标签</sub>

<table border="2" cellspacing="0" width=auto height=auto style="background:#D0ECE7">
	<caption>input常用属性</caption>
    <tbody><tr><th>属性</th><th>属性值</th><th>描述</th></tr>
    	<tr><th rowspan="9">type</th><td>text</td><td>单行文本输入框</td></tr>
    	<tr><td>password</td><td>密码输入框</td></tr>
    	<tr><td>radio</td><td>单选按钮</td></tr>
    	<tr><td>checkbox</td><td>复选框</td></tr>
    	<tr><td>button</td><td>普通按钮</td></tr>
    	<tr><td>submit</td><td>提交按钮</td></tr>
    	<tr><td>reset</td><td>重置按钮</td></tr>
    	<tr><td>image</td><td>图像形式提交按钮</td></tr>
    	<tr><td>file</td><td>文件域</td></tr>
    	<tr><th>name</th><td>用户自定义</td><td>控件的名称<small><sub>给后台看的</sub></small></td></tr>
    	<tr><th>value</th><td>用户自定义</td><td>input控件中的默认文本值</td></tr>
    	<tr><td>size</td><td>正整数</td><td>input控件在页面中的显示宽度</td></tr>
    	<tr><th>checked</th><td>checked</td><td>定义选择控件默认被选中的项</td></tr>
    	<tr><td>maxlength</td><td>正整数</td><td>控件允许输入的最多字符数</td></tr>
	</tbody>
</table>


```html
账户名：<input type="text" value="输入用户名value" name="user" />
密码： <input type="password" name="pwd1.41" value="" />
<br />
性别：<input type="radio" name="sex1.41" checked>男
<!-- 通过name值相同来防止多选，checked标识选中(checked="checked") -->
<input type="radio" name="sex1.41">女
<input type="radio" name="sex1.41">未知
<br />
水果：<input type="checkbox" name="fruit1.41" checked="">苹果
<input type="checkbox" name="fruit1.41">梨子
<input type="checkbox" name="fruit1.41">猕猴桃
<input type="checkbox" name="fruit1.41">其它
<br />
输入电话：<input type="text" name="phonenumber1.41">
<input type="button" name="mailto1.41" value="点击发送验证码">
<br />
<input type="submit" value="提交">
<input type="reset" value="重置">
```

### label标签(理解)<sub>配合input标签</sub>

1. 用label直接包括input(点用户名3个字即可输入)

```html
<label>用户名：
	<input type="text1.42" value="" name="user1.42">
</label>
```

2. 通过for(label)和id(input)来远程控制

```html
<label for="nickname1.42">
	昵称：
</label>
<br />
<input id="nickname1.42" type="text" name="nickname1.42">
```

### textarea控件(文本域)<sub>用于网友评论等大框/双标签</sub>

| 属性 | 属性值                             |
| ---- | ---------------------------------- |
| cols | 每行中的字符数6                    |
| rows | 显示的行数，实际开发用css限定宽高3 |

<textarea cols="30" rows="1">message-留言信息</textarea>

### select下拉列表

选择地区 有些地方用div和li模拟出来的 等学到js

<select>
    <option>--请选择省份--</option>
    <option>北京</option>
    <option selected="">上海</option>
    <option>南通</option>
	<option>新疆</option>
</select>
<select>
    <option selected="">--请选择城市--</option>
    <option>海淀区</option>
	<option>昌平区</option>
    <option>通州区</option>
</select>
`<option selected=""></option>`默认选中

### form表单域*<sub>送到后台</sub>

| 属性   | 属性值                     |
| ------ | -------------------------- |
| action | URL地址                    |
| method | 提交方式get/post           |
| name   | 表单名称，防止一页多个表单 |

此处method="get"为了区分 平时正常使用post

<table width="700" align="center">
	<caption>我的表单</caption>
    <!-- form表单 -->
    <!-- action="url地址" method="提交方式get/post" name="表单名称" -->
    <form action="#1.45" method="get" name="form1"></form>
     	<tbody>
            <tr>
        		<td><label for="username1.45">用户名：</label></td>
        		<td><input type="text" id="username1.45" name="username"></td>
     		</tr>
     		<tr>
       			<td><label for="password1.45">密码：</label></td>
        		<td><input id="password1.45" type="password" name="password"></td>
     		</tr>
     		<tr>
        		<td>性别：</td>
        		<td>
        			<input type="radio" name="sex1" value="man">男&nbsp;&nbsp;&nbsp;
            		<input type="radio" name="sex1" value="wom">女
        		</td>
        	</tr>
        	<tr>
        		<td>生日： </td>
            	<td>
                    <select name="birthday-year">
                        <option>--年份--</option>
                        <option>1</option>
                        <option>2</option>
                        <option>more</option>
                    </select>&nbsp;&nbsp;
                        <select name="birthday-month">
                        <option>--月份--</option>
                        <option>1</option>
                        <option>2</option>
                        <option>more</option>
                    </select>
            	</td>
            </tr>
            <tr>
            	<td><label for="mail">mail：</label></td>
              	<td>
                    <!-- <form action="#1.45" method="get" name="mail">
                      <input type="text" id="mail" name="mail" />
                      <input type="submit" value="点击发送邮件" name="mailto" />
                    </form> 好像不行，自定义尝试失败-->
                    <input id="mail" type="text" name="mail">
                    <input type="button" value="点击发送邮件" name="mailto">
              	</td>
            </tr>
            <tr>
              	<td>个人简介：</td>
              	<td><textarea cols="30" rows="2" name="things">留言信息</textarea></td>
            </tr>
            <tr>
                <td colspan="2">
                	<input type="checkbox" name="agree" checked="checked">我同意此
                	<a href="#1.45" target="_self">许可协议</a>
              	</td>
            </tr>
            <tr>
            	<td><input type="reset"></td>
              	<td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="submit" value="提交"></td>
            </tr>
    </tbody>
</table>

# CSS

## 引入css样式表

### 行内式（内联样式）

```html
<标签名 style="属性1:属性值1; 属性2:属性值2; 属性3:属性值3;"> 内容 </标签名>
<div style="color: red; font-size: 12px;"> 内容 </div>
```

<div style="color: red; font-size: 12px;"> 内容 </div>

### 内部样式表（内嵌样式表）

```html
<head>
    <style type="text/CSS">
        选择器（选择的标签） { 
          属性1: 属性值1;
          属性2: 属性值2; 
          属性3: 属性值3;
        }
    </style>
</head>
```

### 外部样式表（外链式）

```html
<head>
    <!-- stylesheet样式表 type="text/css" 可省略 -->
    <link rel="stylesheet" href="css/002.css" />
</head>
```

```css
选择器（选择的标签） { 
	属性1: 属性值1;
	属性2: 属性值2; 
}
```

注意：  

- link 是个单标签
- link标签需要放在head头部标签中，并且指定link标签的三个属性

| 属性 | 作用                                                         |
| ---- | :----------------------------------------------------------- |
| rel  | 定义当前文档与被链接文档之间的关系，在这里需要指定为“stylesheet”，表示被链接的文档是一个样式表文件。 |
| type | 定义所链接文档的类型，在这里需要指定为“text/CSS”，表示链接的外部文件为CSS样式表。我们都可以省略 |
| href | 定义所链接外部样式表文件的URL，可以是相对路径，也可以是绝对路径。 |

### 三种样式表总结

| 样式表     | 优点                     | 缺点                     | 使用情况       | 控制范围           |
| ---------- | ------------------------ | ------------------------ | -------------- | ------------------ |
| 行内样式表 | 书写方便，权重高         | 没有实现样式和结构相分离 | 较少           | 控制一个标签（少） |
| 内部样式表 | 部分结构和样式相分离     | 没有彻底分离             | 较多           | 控制一个页面（中） |
| 外部样式表 | 完全实现结构和样式相分离 | 需要引入                 | 最多，强烈推荐 | 控制整个站点（多） |

## CSS选择器（重点）

### CSS选择器作用（重点）

找到特定的HTML页面元素，分为**基础选择器**和**复合选择器**

### css基础选择器

| 选择器       | 作用                          | 缺点                     | 使用情况   | 用法                 |
| ------------ | ----------------------------- | ------------------------ | ---------- | -------------------- |
| 标签选择器   | 可以选出所有相同的标签，比如p | 不能差异化选择           | 较多       | p { color：red;}     |
| 类选择器     | 可以选出1个或者多个标签       | 可以根据需求选择         | 非常多     | .nav { color: red; } |
| id选择器     | 一次只能选择器1个标签         | 只能使用一次             | 不推荐使用 | #nav {color: red;}   |
| 通配符选择器 | 选择所有的标签                | 选择的太多，有部分不需要 | 不推荐使用 | * {color: red;}      |

## CSS字体样式

### font字体

单位

| 相对长度单位 | 说明                         |
| ------------ | ---------------------------- |
| em           | 相对于当前对象文本的字体尺寸 |
| px           | 像素，最常用                 |
| 绝对长度单位 | 说明                         |
| in           | 英寸                         |
| cm           | 厘米                         |
| mm           | 毫米                         |
| pt           | 点                           |

#### font

必须保留**font-size**和**font-family**属性

```css
font: font-style样式  font-weight粗细  font-size字号/line-height行高  font-family;
```

#### font-family

| 字体名称    | 英文名称        | Unicode编码          |
| ----------- | --------------- | -------------------- |
| 宋体        | SimSun          | \5B8B\4F53           |
| 新宋体      | NSimSun         | \65B0\5B8B\4F53      |
| 黑体        | SimHei          | \9ED1\4F53           |
| 微软雅黑    | Microsoft YaHei | \5FAE\8F6F\96C5\9ED1 |
| 楷体_GB2312 | KaiTi_GB2312    | \6977\4F53_GB2312    |
| 隶书        | LiSu            | \96B6\4E66           |
| 幼圆        | YouYuan         | \5E7C\5706           |
| 华文细黑    | STXihei         | \534E\6587\7EC6\9ED1 |
| 细明体      | MingLiU         | \7EC6\660E\4F53      |
| 新细明体    | PMingLiU        | \65B0\7EC6\660E\4F53 |

#### font-weight 字体粗细

**normal :** 正常的字体。相当于number为400。声明此值将取消之前任何设置 
**bold :**  粗体。相当于number为700。也相当于b对象的作用 
**bolder :** IE5+　特粗体 
**lighter :**  IE5+　细体 
*number :* IE5+　100 | 200 | 300 | 400 normal| 500 | 600 | 700 加粗 |  800 | 900 

#### 总结

| 属性            | 表示     | 注意点                                                       |
| :-------------- | :------- | :----------------------------------------------------------- |
| **font-size**   | 字号     | 我们通常用的单位是px 像素，一定要跟上单位                    |
| **font-family** | 字体     | 实际工作中按照团队约定来写字体 [参数](#font-family)          |
| font-weight     | 字体粗细 | 加粗700/bold 不加粗normal/400 不要加单位                     |
| font-style      | 字体样式 | 记住倾斜是 italic /不倾斜是**normal**                        |
| **font**        | 字体连写 | 1. 字体连写是有顺序的  不能随意换位置 2. 其中**字号**和字体 必须同时出现 [具体](#font) |

### CSS外观属性

#### color:文本颜色

| 表示           | 属性值                                  |
| :------------- | :-------------------------------------- |
| 预定义的颜色值 | red，green，blue，还有我们的御用色 pink |
| 十六进制       | #FF0000，#FF6600，#29D794               |
| RGB代码        | rgb(255,0,0)或rgb(100%,0%,0%)           |

```css
h1{color:red;}
```

#### text-align:文本水平对齐方式

| 属性   |       解释       |
| ------ | :--------------: |
| left   | 左对齐（默认值） |
| right  |      右对齐      |
| center |     居中对齐     |

#### line-height:行间距

```
一般情况下，行距比字号大7.8像素左右就可以了。
line-height: 24px;
```

#### text-indent:首行缩进

**1em 就是一个字的宽度   如果是汉字的段落， 1em 就是一个汉字的宽度**

```css
p {
      /*行间距*/
      line-height: 25px;
      /*首行缩进2个字  em  1个em 就是1个字的大小*/
      text-indent: 2em;  
 }
```

#### text-decoration 文本的装饰

| 值           | 描述                                                  |
| ------------ | ----------------------------------------------------- |
| none         | 默认。定义标准的文本。 取消下划线（最常用）           |
| underline    | 定义文本下的一条线。下划线 也是我们链接自带的（常用） |
| overline     | 定义文本上的一条线。（不用）                          |
| line-through | 定义穿过文本下的一条线。（不常用）                    |

#### CSS外观属性总结

| 属性            | 表示     | 注意点                                                  |
| :-------------- | :------- | :------------------------------------------------------ |
| color           | 颜色     | 我们通常用  十六进制   比如 而且是简写形式 #fff         |
| line-height     | 行高     | 控制行与行之间的距离                                    |
| text-align      | 水平对齐 | 可以设定文字水平的对齐方式                              |
| text-indent     | 首行缩进 | 通常我们用于段落首行缩进2个字的距离   text-indent: 2em; |
| text-decoration | 文本修饰 | 记住 添加下划线underline  取消下划线 none               |

## CSS复合选择器

### 后代选择器（重点）

用来选择元素或元素组的**子孙后代**

- 当标签发生嵌套时，内层标签就成为外层标签的后代。
- 子孙后代都可以这么选择。 或者说，它能选择任何包含在内 的标签。

```css
父级 子级{属性:属性值;属性:属性值;}
.class h3{color:red;font-size:16px;}
```

### 子元素选择器

子元素选择器只能选择作为某元素**子元素(亲儿子)**的元素。

```css
.class>h3{color:red;font-size:14px;}
```

> 这里的子 指的是 亲儿子  不包含孙子 重孙子之类。

```
 比如：  .demo > h3 {color: red;}   说明  h3 一定是demo 亲儿子。  demo 元素包含着h3。
```

### 交集选择器

其中第一个为标签选择器，第二个为class选择器，两个选择器之间**不能有空格**，如h3.special。

```
比如：   p.one   选择的是： 类名为 .one  的 段落标签。  
```

用的相对来说比较少，不太建议使用。

### 并集选择器（重点）

```
比如  .one, p , #test {color: #F00;}  
表示   .one 和 p  和 #test 这三个选择器都会执行颜色为红色。 
通常用于集体声明。  
```

### 链接伪类选择器（重点）

- a:link      /* 未访问的链接 */
- a:visited   /* 已访问的链接 */
- a:hover     /* 鼠标移动到链接上 */
- a:active    /* 选定的链接 */

不要颠倒顺序 实际工作开发中，我们很少写全四个状态，一般我们写法如下：

```css
a {   /* a是标签选择器  所有的链接 */
			font-weight: 700;
			font-size: 16px;
			color: gray;
}
a:hover {   /* :hover 是链接伪类选择器 鼠标经过 */
			color: red; /*  鼠标经过的时候，由原来的 灰色 变成了红色 */
}
```

### 复合选择器总结

| 选择器         | 作用                     | 特征                 | 使用情况 | 隔开符号及用法                          |
| -------------- | ------------------------ | -------------------- | -------- | --------------------------------------- |
| 后代选择器     | 选择所有元素后代         | 是选择所有的子孙后代 | 较多     | 符号是**空格** `.nav li`                |
| 子代选择器     | 选择亲儿子 最近一级元素  | 只选亲儿子           | 较少     | 符号是**>**   `.nav>li`                 |
| 交集选择器     | 选择两个标签交集的部分   | 既是 又是            | 较少     | **没有符号**  `p.one`                   |
| 并集选择器     | 选择某些相同样式的选择器 | 可以用于集体声明     | 较多     | 符号是**逗号** `.nav, .header`          |
| 链接伪类选择器 | 给链接更改状态           |                      | 较多     | 重点记住 a{} 和 a:hover  实际开发的写法 |

## 标签显示模式（display）重点

### 块级元素(block-level)

```
常见的块元素有<h1>~<h6>、<p>、<div>、<ul>、<ol>、<li>等，其中<div>标签是最典型的块元素。
```

- 比较霸道，自己独占一行
- 高度，宽度、外边距以及内边距都可以控制。
- 宽度默认是容器（父级宽度）的100%
- 是一个容器及盒子，里面可以放行内或者块级元素。

注意：

- 只有 文字才 能组成段落  因此 p  里面不能放块级元素，特别是 p 不能放div 

- 同理还有这些标签h1,h2,h3,h4,h5,h6,dt，他们都是文字类块级标签，里面不能放其他块级元素。

### 行内元素(inline-level)

```
常见的行内元素有<a>、<strong>、<b>、<em>、<i>、<del>、<s>、<ins>、<u>、<span>等，其中<span>标签最典型的行内元素。有的地方也成内联元素
```

- 行内元素的特点：

（1）相邻行内元素在一行上，一行可以显示多个。

（2）高、宽直接设置是无效的。

（3）默认宽度就是它本身内容的宽度。

（4）**行内元素只能容纳文本或则其他行内元素。**

注意：

- 链接里面不能再放链接。
- 特殊情况a里面可以放块级元素，但是给a转换一下块级模式最安全。

### 行内块元素（inline-block）

```
在行内元素中有几个特殊的标签——<img />、<input />、<td>，可以对它们设置宽高和对齐属性，有些资料可能会称它们为行内块元素。
```

行内块元素的特点：

（1）和相邻行内元素（行内块）在一行上,但是之间会有空白缝隙。一行可以显示多个
（2）默认宽度就是它本身内容的宽度。
（3）高度，行高、外边距以及内边距都可以控制。

### 三种模式总结区别

| 元素模式   | 元素排列               | 设置样式               | 默认宽度         | 包含                     |
| ---------- | ---------------------- | ---------------------- | ---------------- | ------------------------ |
| 块级元素   | 一行只能放一个块级元素 | 可以设置宽度高度       | 容器的100%       | 容器级可以包含任何标签   |
| 行内元素   | 一行可以放多个行内元素 | 不可以直接设置宽度高度 | 它本身内容的宽度 | 容纳文本或则其他行内元素 |
| 行内块元素 | 一行放多个行内块元素   | 可以设置宽度和高度     | 它本身内容的宽度 |                          |

### 标签显示模式转换 display

- 块转行内：display:inline;
- 行内转块：display:block;
- 块、行内元素转换为行内块： display: inline-block;

此阶段，我们只需关心这三个，其他的是我们后面的工作。

## 行高那些事（line-height）

> **文字的行高等于盒子的高度。**

这里情况些许复杂，开始学习，我们可以先从简单地方入手学会。

行高   =  上距离 +  内容高度  + 下距离

上距离和下距离总是相等的，因此文字看上去是垂直居中的。

**行高和高度的三种关系**

- 如果 行高 等 高度  文字会 垂直居中
- 如果行高 大于 高度   文字会 偏下 
- 如果行高小于高度   文字会  偏上 

## CSS 背景(background)

### 背景颜色(color)

- 语法：

  ```
  background-color:颜色值;   默认的值是 transparent  透明的
  ```

### 背景图片(image)

- 语法： 

```css
background-image : none | url (url) 
```

| 参数 |              作用              |
| ---- | :----------------------------: |
| none |       无背景图（默认的）       |
| url  | 使用绝对或相对地址指定背景图像 |

```css
background-image : url(images/demo.png);
```

- 小技巧：  我们提倡 背景图片后面的地址，url不要加引号。

### 背景平铺（repeat）

- 语法： 

```css
background-repeat : repeat | no-repeat | repeat-x | repeat-y 
```

| 参数      |                 作用                 |
| --------- | :----------------------------------: |
| repeat    | 背景图像在纵向和横向上平铺（默认的） |
| no-repeat |            背景图像不平铺            |
| repeat-x  |         背景图像在横向上平铺         |
| repeat-y  |          背景图像在纵向平铺          |

### 背景位置(position) 重点

- 语法： 

```css
background-position : length || length

background-position : position || position 
```

| 参数     |                              值                              |
| -------- | :----------------------------------------------------------: |
| length   |         百分数 \| 由浮点数字和单位标识符组成的长度值         |
| position | top \| center \| bottom \| left \| center \| right   方位名词 |

- 注意：
  - 必须先指定background-image属性
  - position 后面是x坐标和y坐标。 可以使用方位名词或者 精确单位。
  - 如果指定两个值，两个值都是方位名字，则两个值前后顺序无关，比如left  top和top  left效果一致
  - 如果只指定了一个方位名词，另一个值默认居中对齐。
  - 如果position 后面是精确坐标， 那么第一个，肯定是 x  第二的一定是y
  - 如果只指定一个数值,那该数值一定是x坐标，另一个默认垂直居中
  - 如果指定的两个值是 精确单位和方位名字混合使用，则第一个值是x坐标，第二个值是y坐标

**实际工作用的最多的，就是背景图片居中对齐了。**

### 背景附着

- 背景附着就是解释背景是滚动的还是固定的

- 语法： 

  ```】
  background-attachment : scroll | fixed 
  ```

| 参数   |           作用           |
| ------ | :----------------------: |
| scroll | 背景图像是随对象内容滚动 |
| fixed  |       背景图像固定       |

### 背景简写

- background：属性的值的书写顺序官方并没有强制标准的。为了可读性，建议大家如下写：
- background: 背景颜色 背景图片地址 背景平铺 背景滚动 背景位置;
- 语法：

```css
background: transparent url(image.jpg) repeat-y  scroll center top ;
```

### 背景透明(CSS3)

- 语法：

```css
background: rgba(0, 0, 0, 0.3);
```

- 最后一个参数是alpha 透明度  取值范围 0~1之间
- 我们习惯把0.3 的 0 省略掉  这样写  background: rgba(0, 0, 0, .3);
- 注意：  背景半透明是指盒子背景半透明， 盒子里面的内容不受影响
- 因为是CSS3 ，所以 低于 ie9 的版本是不支持的。

### 背景总结

| 属性                  | 作用             | 值                                                           |
| --------------------- | :--------------- | :----------------------------------------------------------- |
| background-color      | 背景颜色         | 预定义的颜色值/十六进制/RGB代码                              |
| background-image      | 背景图片         | url(图片路径)                                                |
| background-repeat     | 是否平铺         | repeat/no-repeat/repeat-x/repeat-y                           |
| background-position   | 背景位置         | length/position    分别是x  和 y坐标， 切记 如果有 精确数值单位，则必须按照先X 后Y 的写法 |
| background-attachment | 背景固定还是滚动 | scroll/fixed                                                 |
| 背景简写              | 更简单           | 背景颜色 背景图片地址 背景平铺 背景滚动 背景位置;  他们没有顺序 |
| 背景透明              | 让盒子半透明     | background: rgba(0,0,0,0.3);   后面必须是 4个值              |

## CSS 三大特性

### CSS层叠性

- 概念：

  所谓层叠性是指多种CSS样式的叠加。

  是浏览器处理冲突的一个能力,如果一个属性通过两个相同选择器设置到同一个元素上，那么这个时候一个属性就会将另一个属性层叠掉

- 原则：

  - 样式冲突，遵循的原则是**就近原则。** 那个样式离着结构近，就执行那个样式。
  - 样式不冲突，不会层叠

```
CSS层叠性最后的执行口诀：  长江后浪推前浪，前浪死在沙滩上。
```

### CSS继承性

- 概念：

  子标签会继承父标签的某些样式，如文本颜色和字号。

   想要设置一个可继承的属性，只需将它应用于父元素即可。

简单的理解就是：  子承父业。

- **注意**：
  - 恰当地使用继承可以简化代码，降低CSS样式的复杂性。比如有很多子级孩子都需要某个样式，可以给父级指定一个，这些孩子继承过来就好了。
  - 子元素可以继承父元素的样式（**text-，font-，line-这些元素开头的可以继承，以及color属性**）

```
CSS继承性口诀：  龙生龙，凤生凤，老鼠生的孩子会打洞。
```

### 5.3 CSS优先级（重点）

- 概念：

  定义CSS样式时，经常出现两个或更多规则应用在同一元素上，此时，

  * 选择器相同，则执行层叠性
  * 选择器不同，就会出现优先级的问题。


#### 1). 权重计算公式

关于CSS权重，我们需要一套计算公式来去计算，这个就是 CSS Specificity（特殊性）

| 标签选择器             | 计算权重公式 |
| ---------------------- | ------------ |
| 继承或者 *             | 0,0,0,0      |
| 每个元素（标签选择器） | 0,0,0,1      |
| 每个类，伪类           | 0,0,1,0      |
| 每个ID                 | 0,1,0,0      |
| 每个行内样式 style=""  | 1,0,0,0      |
| 每个!important  重要的 | ∞ 无穷大     |

- 值从左到右，左面的最大，一级大于一级，数位之间没有进制，级别之间不可超越。 
- 关于CSS权重，我们需要一套计算公式来去计算，这个就是 CSS Specificity（特殊性）
- div {
      color: pink!important;  
  }


#### 2). 权重叠加

我们经常用交集选择器，后代选择器等，是有多个基础选择器组合而成，那么此时，就会出现权重叠加。

就是一个简单的加法计算

- div ul  li   ------>      0,0,0,3
- .nav ul li   ------>      0,0,1,2
- a:hover      -----—>   0,0,1,1
- .nav a       ------>      0,0,1,1

注意： 

1. 数位之间没有进制 比如说： 0,0,0,5 + 0,0,0,5 =0,0,0,10 而不是 0,0, 1, 0， 所以不会存在10个div能赶上一个类选择器的情况。

#### 3). 继承的权重是0

这个不难，但是忽略很容易绕晕。其实，我们修改样式，一定要看该标签有没有被选中。

1） 如果选中了，那么以上面的公式来计权重。谁大听谁的。 
2） 如果没有选中，那么权重是0，因为继承的权重为0.