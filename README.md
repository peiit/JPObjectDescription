# JPObjectDescription
    This is a custom class's automatic description in OC. It's a Category design by runtime of the NSObject Class.
    The code will help you in the daily debug when you want watch the property's valve . It can  used for one single custom class,the array(dictionary) include one more custom class,and one custom class as a property in other custom(one or more).
    这是一个实现OC里自定义类的自动描述方法。这个方法是NSObject的一个分类，借助runtime实现自定义类的描述。
    这个代码可以在你使用Debug的时候帮你查看属性的值。它适用于单一的自定义类对象的情况，数组(字典)里包含多个自定义类对象，一个自定义类对象作为属性被包含于另一个对象（不限一层）。

### Installation/安装
    You only need drag NSObject+JPObjectDescription to your project.
    你只需要将NSObject+JPObjectDescription的源码文件拷贝到你的项目里。


### Use/使用

```objc
#import "NSObject+JPObjectDescription.h"
...
//Demo 1
JPBook * book0 = [[JPBook alloc]init];
book0.bId = @(0);
book0.name = @"Objective:C程序设计(第6版)";
book0.author = @"Stephen G. Kochan (作者), 林冀 (译者)";
NSLog(@"%@",book0);

//Demo 2
JPBook * book1 = [[JPBook alloc]init];
book1.bId = @(1);
book1.name = @"精通iOS开发(第7版)";
book1.author = @"马克 (David Mark) (作者), Jack Nutting (作者), Kim Topley (作者), Fredrik Olsson (作者), 等 (作者), 周庆成 (译者), 邓强 (译者), 武海峰 (译者), 蒋振华 (译者)";
NSArray * books = @[book0,book1];
NSLog(@"%@",books);


//Demo 3
JPBookContent * bookContent2 = [[JPBookContent alloc]init];
bookContent2.size = @(150000);
bookContent2.content = @"Objective C is the best programming language in the world";

JPBook * book2 = [[JPBook alloc]init];
book2.bId = @(2);
book2.name = @"Objective C";
book2.author = @"Apple";
book2.content = bookContent2;
NSLog(@"%@",bookContent2);
```
####the log will print like this:
####输出的日志如下:
```objc
//Demo 1
2016-03-14 16:19:50.436 JPObjectDescriptionDemo[31365:548943] ⚠️JPBook
    └bId:0
    └name:Objective:C程序设计(第6版)
    └author:Stephen G. Kochan (作者), 林冀 (译者)

//Demo 3
Printing description of book2:
⚠️JPBook
    └bId:2
    └name:Objective C
    └author:Apple
    └content:⚠️JPBookContent
        └size:150000
        └content:Objective C is the best programming language in the world
```
####when you debug the variable:
####当你debug查看变量时:
#####Demo1
<div style="float: center"><img src="http://7xruy7.com1.z0.glb.clouddn.com/1.png" /></div>
#####Demo2
<div style="float: center"><img src="http://7xruy7.com1.z0.glb.clouddn.com/22.png" /></div>
#####Demo3
<div style="float: center"><img src="http://7xruy7.com1.z0.glb.clouddn.com/3.png" /></div>

### License
    JPObjectDescription is available under the MIT License. See the LICENSE file for more info.
### Blog
<a href="http://blog.peiit.com">Visit the blog/访问蒋培的博客</a>