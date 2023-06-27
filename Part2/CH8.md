# CH8 同步電動機

## 同步電動機原理

1. 無法自行啟動，需有外加力量或阻尼繞組幫助
2. 轉部及定部之激磁極數需相等
3. 轉子速率需靠近同步轉速，才會產生轉矩
4. 除了特殊高速及兩極同步電動機外，轉子多採用凸極式

## 同步電動機構造

1. 小型同步電動機: 轉電式
2. 大型同步電動機: 轉磁式
3. 轉子設有阻尼繞組
  * 提供 $T_s$ 幫助啟動
  * 防止追逐現象

* 同步電動機的構造、等效電路圖與同步發電機類似

## 同步電動機的功率與轉矩

輸入功率

\begin{empheq}[box={\BgBox}]{align}
P_{in} &= VI \cos \theta \\
       &= EI \cos \alpha + I^2 R \\
       &= P_m + I^2 R \\
       &= P_{out} + \text{鐵損} + \text{機械損} + I^R \\
\end{empheq}

\begin{empheq}[box={\BgBox}]{align}
P_{m} &= EI \cos \theta \\
P_{m} &= n \frac{VE}{X_S} \sin \delta \\
T_m &= \frac{P_m}{\omega}
\end{empheq}

* V: 相電壓、I: 相電流、$P_{in}$: 輸入功率、$P_{m}$: 內部機械功率、$P_{out}$: 輸出功率、n: 相數、V: 相電壓、E: 應電勢、$T_m$: 電磁轉矩

* 轉矩-負載特性曲線

\begin{tikzpicture}[scale=1]
\draw[->] (0, 0) -- (8.2, 0) node[right] {$\delta$};
\draw[->] (0, 0) -- (0, 4) node[above] {$T_m$};
\node[] at (0, -0.3) {$180^{\circ}$};
\node[] at (4, -0.3) {$90^{\circ}$};
\node[] at (8, -0.3) {$180^{\circ}$};
\draw[color=blue, domain=0:7.87] plot (\x,{3*sin((\x r) / 2.5)});
\end{tikzpicture}

## 同步電動機的電樞反應

* 依 $I_f$ 而變動

$\cos \theta$      | 相位                    | 負載特性      | 激磁特性
---------          | ---------               | ---------     | ---------
$\cos \theta = 1$  | 同相                    | 電阻          | 正交磁
$\cos \theta = 0$  | I 落後 V $90^{\circ}$   | 純電感性  | 增磁效應
$\cos \theta = 0$  | I 領先 V $90^{\circ}$   | 純電容性  | 去磁效應
$0<\cos \theta <1$ | I 落後 V $0-90^{\circ}$ | 電感性        | 增磁效應 + 正交磁
$0<\cos \theta <1$ | I 領先 V $0-90^{\circ}$ | 電容性        | 去磁效應 + 正交磁

* 記憶方法
  * I 與V同相 => 電阻性 => 正交磁
  * I 領先 V => 電容性 => 去磁效應(與發電機相反)
  * I 落後 V => 電感性 => 增磁效應(與發電機相反)

* V 曲線: 提高$I_F$，則電樞電流先下降(電感性 => 電阻性)，再上升(電阻性 => 電感性)，$\cos \theta$也跟著改變
* 當負載變大時，V曲線上移
* $I_{fn}$: $\cos \theta = 1$ 時的激磁電流

\begin{tikzpicture}[scale=0.5]
\draw[->] (0, 0) -- (10, 0) node[right] {$I_F$};
\draw[->] (0, 0) -- (0, 10) node[above] {$I_A$};
\draw [thick, red] plot [smooth] coordinates {(1, 8) (2, 5) (3.5, 2) (6, 5) (8, 9)};
\draw [thick, orange] plot [smooth] coordinates {(1, 8.5) (2, 5.5) (3.5, 2.5) (6, 5.5) (8, 9.5)} ;
\draw [thick, yellow] plot [smooth] coordinates {(1, 9) (2, 6) (3.5, 3) (6, 6) (8, 10)} ;
\draw [smooth] (3, 0) -- (5, 7) node[above] {$\cos \theta = 1$};
\node[] at (1, 6.5) {電感性};
\node[blue] at (1, 5.5) {欠激磁};
\node[] at (8, 7) {電容性};
\node[blue] at (8, 6.2) {過激磁};
\node [] at (3, -0.3) {$I_{fn}$};
\end{tikzpicture}

## 同步電動機的運用

1.  同步調相機
   * 改善功率因數 $\cos \theta$
   * 調整線路輸入電流以調整線路電壓降
   * 增加輸電線路穩定度
   * 降低 $VR%$ 
2. 驅動機械負載 (如小型機械負載)
   * 如磁碟機、雷射印表機、散熱扇等

## 同步電動機的起動

1. 利用感應電動機原理起動

  電樞繞組通交流電，磁場繞組先不加電流，而是外加電阻，轉子的磁場繞組及阻尼繞組因旋轉磁場使同步電動機如感應電動機轉動。
  待接近同步轉速時，磁場繞阻才加上電流。

2. 降低電源頻率啟動

  將電源頻率降低，再慢慢將頻率上升，使同步電動機轉速逐漸增加
3. 以它機帶動啟動

  使其他外力使同步電動機轉速接近同步轉速，再將電樞繞組和磁場繞組的電源加入。






