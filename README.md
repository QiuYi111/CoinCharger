
# Table of Contents

1.  [元件功能介绍](#orgc04b52a)
    1.  [键盘和数码管部分](#org5cba9b1)
        1.  [BtoD](#org4ba73cd)
        2.  [D\_​Controller](#org43d5908)
        3.  [DisConter](#org0a60bb1)
        4.  [Scanner](#orgeda77e3)
        5.  [Timer](#org6bdf9d1)
        6.  [Translate](#orgf8e5eb3)
        7.  [keyborad](#org41b48a3)
        8.  [mux](#org93442d8)
        9.  [switch](#orgdfa152d)
    2.  [蜂鸣器部分](#orgb52f530)


<a id="orgc04b52a"></a>

# 元件功能介绍


<a id="org5cba9b1"></a>

## 键盘和数码管部分


<a id="org4ba73cd"></a>

### BtoD

本元件将​**10位二进制输入**​转化成经过编码之后的​**4位总线输出** ​。编码的规则是将十进制数转换成二进制之后加一，这样可以利用0000表示无输入情况。


<a id="org43d5908"></a>

### D\_​Controller

本元件将​**4位总线输入**​移位地输出。


<a id="org0a60bb1"></a>

### DisConter

本元件接受来自D\_​Controller的输入和时钟信号，实现倒计时显示信号的输出，并且在倒数结束后输出控制蜂鸣器的信号。


<a id="orgeda77e3"></a>

### Scanner

本元件接受时钟信号，并且按顺序输出扫描信号。


<a id="org6bdf9d1"></a>

### Timer

这是一个分频器。将芯片默认的50MHZ信号转换成1HZ信号和50HZ信号输出。


<a id="orgf8e5eb3"></a>

### Translate

本元件是将4位输入信号转换成数码管显示控制。


<a id="org41b48a3"></a>

### keyborad

本元件包含以下功能：

-   实现扫描键盘：接收来自物理键盘的行列信号输入，转换成二进制信号输出。其中包括数字、特殊控制信号。
-   实现自动关机：本元件接收一个1HZ时钟，在无输入30s后自动输出关机指令信号


<a id="org93442d8"></a>

### mux

总线输入输出的数据选择器


<a id="orgdfa152d"></a>

### switch

本元件将脉冲、阶跃信号转换成一个恒信号。


<a id="orgb52f530"></a>

## 蜂鸣器部分

