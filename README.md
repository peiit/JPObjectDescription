# JPObjectDescription
    This is a custom class's automatic description in OC.

### Installation
    You only need drag NSObject+JPObjectDescription to your project.


### Use
```objc
#import "NSObject+JPObjectDescription.h"
...
JPBook * book0 = [[JPBook alloc]init];
book0.bId = @(0);
book0.name = @"Objective:C程序设计(第6版)";
book0.author = @"Stephen G. Kochan (作者), 林冀 (译者)";
NSLog(@"%@",book0);
```
####the log will print like this:
```objc
2016-03-14 16:19:50.436 JPObjectDescriptionDemo[31365:548943] ⚠️JPBook
    └bId:0
    └name:Objective:C程序设计(第6版)
    └author:Stephen G. Kochan (作者), 林冀 (译者)
```
####when you debug:

<div style="float: center"><img src="http://7xruy7.com1.z0.glb.clouddn.com/1.png" /></div>

### License
    JPObjectDescription is available under the MIT License. See the LICENSE file for more info.



