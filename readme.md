# 2T2R UWB芯片验证repo

## 合作要求

1. 禁止使用-f push指令，有抹除代码的风险

2. 仔细编写.gitignore文件排除脚本，不允许上传大量中间文件（如.vscode、.idea、build、.cache、\*.obj等），不允许上传大量数据包（如\*.zip、\*.npz、\*.npy等，有特殊需求时，可以少量上传，但由于总脚本将这些扩展名基本排除在外，需要在单独工程的脚本中进行反向去除）

3. master主分支不允许执行commit，请每个人自己建立属于自己的dev分支，推荐命名为dev-名字拼音缩写，需要改动时，在自己的分支上进行操作。每次准备修改时，不要忘记从master分支同步最新的更改（切换到个人分支上，执行git merge master），同步完后开始编写程序。需要提交时，在自己的分支上提交，如果由于诸如没调试完等原因，不能作为一个可用版本合并到master时，可以先push在自己的分支上，成为一个可用版本后，将改动同步到master上（切换到master分支上，执行git merge 个人分支，然后将merge后的结果push上去，这个过程可能出现冲突，需要逐个解决，不解决前是不会形成一个版本的，merge完后不要忘记将解决好冲突的结果push上去，解决完后可能会出现vim的界面要求提供commit -m 中的描述，按照默认填写即可，vim模式下打上冒号进入命令模式，使用wq（write+quit）命令保存退出）。还不知道分支怎么用、vim怎么用的赶紧去学

4. 接上一条，因为设置了分支，之后不再允许缺省的push和pull指令，必须将远程仓库名和分支名打全，否则容易搞混分支；pull操作本质上是git fetch（仅下载）+git merge，merge的对象是当前停留的分支，如果停在master上pull个人分支，可能会形成意外的合并，因此保险起见可以先fetch后手动merge；也可以先使用git branch确认好当前停留在哪个分支，确认后再操作

5. 程序会引用到的路径不允许出现中文、空格、特殊符号（除了字母数字和下划线，其他全是特殊符号）

6. 工程文件夹的命名需要遵循 编译器/解释器 的 版本/类型 + 硬件名（如果有） + 仓库名 的规则，可以参考现有工程中的命名

7. test.py被全局标记为临时做实验用的代码，工程里文件取名字不要使用它，因为不会被上传，如果一定要，需要在局部的.gitignore中反向标记

8. python语言的开发强制要求使用pycharm IDE，不使用VsCode，因为两者的启动路径不同，虽然VsCode通过增加代码、将路径放进system path中可以解决import的引用问题，但新增的代码会和pycharm形成冲突，给GitHub管理带来困难

## 环境

1. 25年5月后修改的绝大多数python上位机工程都需要额外的plib，该仓库也为私有仓库，需要联系@MrGEFORCE进入仓库；该仓库如何使用，请看仓库内最外层的readme；代码层面上如何传递配置参数，可以参考sgr仓库中的大部分上位机项目

2. 25年7月后，PySide6 GUI库最新版为6.9.X，对于的QtCreator不再生成*.pyproject项目配置文件，而是生成pyproject.toml文件（对老文件还是兼容的），如果在使用新版的QtCreator，对于低于6.9.X的PySide6在Scripts中带下的pyside6-project.exe，是无法解析pyproject.toml文件进行配置的，QtCreator中terminal会输出"Cannot determine project_file None"的报错；同时，6.9.1的PySide6又发现和pyqtgraph是冲突的，有些二维图在启动时就会不停刷新，坐标轴不停上升或下降，软件也未响应，因此目前若需要配合新的QtCreator，需严格给PySide6库控制在唯一可用的6.9.0版本，编写上位机的同学需要引起注意

3. chirp计算器适用于分析工程中所有雷达的参数，也是一个私有仓库，需要联系@MrGEFORCE进入仓库；之前有用过这个软件并生成过对应配置的项目，目前都已经把对应cfg文件搬到项目里来了，位于上位机工程的cfg文件夹中，一些远古版本的cfg可以无法使用最新软件打开，可以人为参考；但其多语言计算内核是一个开源仓库，地址为：https://github.com/MrGEFORCE/chirpCalculationKernel ，本项目中由于具备雷达功能，需要告知用户当前参数的性能以及其中是否有隐含错误，需要用到其中的python版本作为上位机参数计算的内核

## 文件结构/项目

python312_uwbHost：最终我们决定将控制和三个功能的细分控制和结果呈现都放在同一个软件内
    
    gui: 界面程序
    ref: 参考代码，给人看的，不能跑（也许能），主要看网络线程的调用方式和内部实现，下位机UDP调好后配合它使用
    const.py：放一些常量，以及配合plib的pConfig使用

pythonMicro_respberryPiPico: 树莓派参考代码

.gitignore 总工程文件排除脚本，很重要

readme.md 
