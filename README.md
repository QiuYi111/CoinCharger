
# 设计思路


<a id="org5cba9b1"></a>

## 键盘和显示部分设计思路

数据的输入、控制的实现以及终端数码管的显示都由此模块实现。根据要求，这个模块的功能包括以下详细的内容：


<a id="org8d23fd4"></a>

### 数据输入

数据的输入物理上通过键盘来实现，因此我们需要完成​**扫描键盘的驱动**​和​**键位绑定**​两个部分。这两个部分可以进一步拆分成下面这些更简单的元件。

1.  扫描信号发生器-Scanner

    这个元件能接收时钟信号，使四个端口依次为1，实现扫描信号的产生。对于每一个端口，扫描的频率即是输入信号的1/4。实现时用一个计数器来触发每一个端口的信号以及重置即可。

2.  键盘和键位绑定-keyboard

    这个元件会接收扫描键盘的扫描信号（列），产生行列信号的二进制输出。我们将行列坐标绑定到表示数字的十个二进制端口以及start等控制信号上。
    同时，为了实现要求中的30秒无输入自动关机的功能，我们为这个元件接入了一个秒级时钟和受到键盘输入控制的计数器。当键盘有任何输入，这个计数器就会清零。如果30秒没有输入，元件就会输出关机信号。


<a id="org93a232e"></a>

### 数据的预处理

键盘上的行列信号虽然已经转换成了​**10位二进制**​信号，但这仍然不利于元件的编写。因此我们对信号进行一定的预处理。

1.  10位二进制转4位总线-BtoD

    这个元件将来自键盘的10位二进制信号​**编码后**​转换成4位总线信号。这个编码规则是将10位二进制信号中1所在的位数转换成4位二进制数之后加1 ，目的在于将0000视为无信号,便于后续逻辑的处理。


<a id="orgd86f05c"></a>

### 控制

1.  移位寄存器-D​\_​Controller

    这个元件能够移位地储存和输出数据。

2.  倒计时-DisCounter

    这个元件用来实现倒计时逻辑。他会接收来自移位寄存器的数据并在​**按下确认键之后**​，输出倒计时的数据。本元件会在内部进行逻辑判断，保证实现​**大于40s则按40s输出**​。元件接入了一个秒级时钟来实现倒计时控制。


<a id="orgaa73dcc"></a>

### 终端显示

1.  4位总线转数码管输出-Translate

    这个元件直接将4位总线的输入解码成为数码管控制信号，用于终端控制。


<a id="org1a8bb28"></a>

### 分频器-Timer

上述的元件需要不同周期的时钟信号，Timer将实现把将芯片默认的50MHZ信号转换成1HZ信号和50HZ信号输出。


<a id="orgbe29ecb"></a>

## 辅助元件

由于实际上各个部件受到彼此控制，逻辑上也存在选择、先后关系，输出信号的时域形式也并不总是符合另一个元件的输入要求，因此为了完成整体电路的搭建，我们还设计了以下元件：

1.  总线数据选择器-mux

    这个元件会根据选择信号来决定允许哪个总线信号得以通过。

2.  信号转换-switch

    由于VHDL语言的限制，边沿触发并不总是有效，我们往往需要将脉冲、阶跃、上升沿转换成一个恒定的信号。


## 蜂鸣器部分

<a id="orgcmp64546"></a>

### CHARGE_MUSIC_PLAY
本元件主要实现以下功能：

- 将输入信号根据节拍转化为分频器的分频依据（称为N_i）
- 根据音乐节拍和简谱储存音乐，每接收到一个上升沿就输出下一个音符。

<a id="orgm11m"></a>

### M1

本元件为分频器，主要用于将输入频率25分频

<a id="orgto2ot"></a>

###  To2

本原件为分频器，主要用于将输入2分频

<a id="orgtf4p4413"></a>

### ture_four_4_pai

分频器，主要用于将信号4分频

<a id="orgcoinioc"></a>

### Coin

分频器，根据前端N_i接收到的分频依据对蜂鸣器的输入信号进行分频

# 仿真波形及其分析说明


<a id="org975e70d"></a>

## 键盘和显示部分仿真


<a id="org4bbddb6"></a>

### 扫描信号发生器-Scanner

<./Simulation/Scanner.ong>
输入时钟后，依次在各个端口(r1-r4)输出一个周期的高电平信号。
本元件功能正常可用。


<a id="org18383ac"></a>

### 键盘和键位绑定-keyboard

![img](./Simulation/keyboard.png)
波形中为r1-r4输入了扫描信号，并且给了随机的C1-C4信号。经检查输出与给定的按键绑定相符。
本元件功能正常可用。


<a id="orga6aba03"></a>

### 10位二进制转4位总线-BtoD

![img](./Simulation/BtoD.png)
输入信号为10位二进制信号，对应十进制数，输出N为4位总线信号，已经编码。
本元件功能正常可用。


<a id="org3e65c8b"></a>

### 移位寄存器-D​\_​Controller

![img](./Simulation/D_Controller.png)
随机输入，得到了移位的正确输出结果，且元件能够实现存储，复位功能正常。
本元件功能正常可用。


<a id="orga7a8a56"></a>

### 数据选择器-mux

![img](./Simulation/mux.png)
随机设定总线输入的值，在S=1时选择B输出，而在S=0时选择A输出。
本元件功能正常可用。


<a id="org7dd1b96"></a>

### 4位总线转数码管输出-Translate

![img](./Simulation/Translate.png)
随机给定总线输入，数码管控制对应正确。
本元件功能正常可用。

