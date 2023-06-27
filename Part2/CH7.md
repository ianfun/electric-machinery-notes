# CH7 同步發電機

除了剛啟動時，同步發電機和電動機的轉速等於同步轉速，同步轉速公式同感應電動機

## 同步發電機的電樞繞組

* 多採用雙層、短節距、分佈繞

### 節距因數

1. 全節距繞: 同一線圈兩線圈邊相差 $180^{\circ}$

\begin{tikzpicture}
\draw[->, blue] (0, 0) -- ++(1.4, 0);
\node[] at (0.7, -0.4) {$E_1$};
\node[] at (2.1, -0.4) {$E_2$};
\node[] at (1.4, 0.5) {$E = E_1 + E_2$};
\draw[->, red] (1.4, 0) -- ++(1.4, 0);
\draw[->, thick] (0, 0.2) -- ++(2.8, 0);
\end{tikzpicture}

2. 短節距繞: 同一線圈兩線圈邊相差不到 $180^{\circ}$

\begin{tikzpicture}
	\draw[->, blue] (0, 0) -- (1.4, -1);
	\node[] at (0.7, -0.8) {$E_1$};
	\node[] at (2.1, -0.8) {$E_2$};
	\node[] at (1.4, 0.3) {$E = 2E \sin \frac{\beta \pi}{2}$};
	\draw[->, red] (1.4, -1) -- (2.8, 0);
	\draw[->, thick] (0, 0) -- ++(2.8, 0);
	\node[] at (1.4, -0.7) {$\beta$};
\end{tikzpicture}

\begin{empheq}[box={\TitleBox[節距因數]}]{equation}
K_p = \frac{\text{短節距應電勢}}{\text{全節距應電勢}} = \frac{2 E_1 \sin \frac{\beta \pi}{2}}{2 E_1} = \sin \frac{\beta \pi}{2}
\end{empheq}

對於n次諧波得的電機角度，是基本波時的n倍

\begin{empheq}[box={\BgBox}]{equation}
K_p =  (-1)^{\frac{n-1}{2}} \sin \frac{n \beta \pi}{2}
\end{empheq}

可選擇適當的 $\beta$ ，使特定諧波的節距因數等於零，即可消除特定諧波

短節距繞比上全節距繞

* 優點: 節省用銅量、互感較小、抑制諧波
* 缺點: 感應電勢較全節距時低

### 分佈因數

1. 集中繞: 每相每極的感應電勢，是所含線圈數之感應電勢的代數合
2. 分佈繞: 每相每極的感應電勢，是所含線圈數之感應電勢的向量合


\begin{empheq}[box={\TitleBox[槽數]}]{equation}
m = \frac{\text{總槽數} S}{\text{相數} q \times \text{極數} P}
\end{empheq}

\begin{empheq}[box={\TitleBox[槽距]}]{equation}
a = \frac{P \times 180^{\circ} (\text{定子總電機角})}{S (\text{定子總槽數})}
\end{empheq}

\begin{empheq}[box={\TitleBox[分佈因數]}]{equation}
K_d = \frac{\text{分佈繞感應電勢}}{\text{集中繞感應電勢}} = \frac{\sin \frac{ma}{2}}{m \sin \frac{a}{2}}
\end{empheq}

對於n次諧波的節距因數

\begin{empheq}[box={\BgBox}]{equation}
K_d =  \frac{\sin \frac{n \times ma}{2}}{m \sin \frac{n a}{2}}
\end{empheq}

分佈繞比上集中繞

* 優點: 波形更像正弦波、散熱容易、簡少漏磁電抗、有效利用定子線槽
* 缺點: 感應電勢較集中繞時低

### 繞組因數

\begin{empheq}[box={\BgBox}]{equation}
K_w = \text{節距因數} K_p \times \text{分佈因數} K_d
\end{empheq}

每相感應電勢的有效值

\begin{empheq}[box={\BgBox}]{equation}
E = 4.44 K_w f N \phi
\end{empheq}

## 同步發電機的分類

### 依磁極分類

1. 凸極式轉子
  * 磁極數多
  * 轉子直徑大，轉軸長度短
  * 適用於中低轉速發電機
2. 隱極式轉子(圓筒式)
  * 磁極數少
  * 轉子直徑小，轉軸長度長
  * 適用於高轉速發電機

## 依轉子功能分類

* 旋轉電樞式(轉電式)

  適用於低壓、小容量發電機
* 旋轉磁場式(轉磁式)

  適用於高壓、大容量發電機，為同步發電機的主要形式
  
## 依原動機分類

* 水輪式

  極數多，使用凸極式轉子
* 汽輪式(渦輪式)

  極數少，使用隱極式轉子
* 引擎式(內燃式)

  多使用凸極式轉子，裝置**飛輪**使轉速穩定

## 依裝置方式區分

* 水平式

  一般電機的裝置方式
* 垂直式

  水力發電廠主要的裝置方式

## 同步電動機的電樞反應

$\cos \theta$      | 相位                    | 負載特性      | 激磁特性
---------          | ---------               | ---------     | ---------
$\cos \theta = 1$  | 同相                    | 電阻          | 正交磁
$\cos \theta = 0$  | I 落後 V $90^{\circ}$   | 純電感性  | 去磁效應
$\cos \theta = 0$  | I 領先 V $90^{\circ}$   | 純電容性  | 增磁效應
$0<\cos \theta <1$ | I 落後 V $0 - 90^{\circ}$ | 電感性        | 去磁效應 + 正交磁
$0<\cos \theta <1$ | I 領先 V $0 - 90^{\circ}$ | 電容性        | 增磁效應 + 正交磁

* 記憶方法
  * I 與V同相 => 電阻性 => 正交磁
  * I 領先 V => 電容性 => 增磁效應
  * I 落後 V => 電感性 => 去磁效應

電樞反應對感應電勢的影響

1. 正交磁(橫軸反應): 使感應電勢畸變成分正弦波
2. 去磁(直軸反應): 使感應電勢降低
3. 加磁(直軸反應): 使感應電勢增加

## 同步發電機的等效電路

\begin{circuitikz}
\draw (0, -4)
  to [sV, l_=$E$] (0, 0)
  to [R=$R_A$] ++(2, 0)
  to [L=$X_A$, cute] ++(2, 0)
  to [L=$X_L$, cute, -o] ++(2, 0);
\draw (0, -4)
  to [short, -o] ++(6, 0);
\draw[<->] (6, -0.1) -- (6, -3.9);
\node[] at (6.3, -2) {$V$};
\end{circuitikz}

\begin{empheq}[box={\TitleBox[同步電抗]}]{equation}
X_S = \text{電樞漏磁電抗} X_A + \text{電樞反應電抗} X_L
\end{empheq}

\begin{empheq}[box={\TitleBox[同步阻抗]}]{equation}
Z_S = \text{電樞電阻} R_A + j X_S \approx j X_S
\end{empheq}

由圖可知電壓方程式

\begin{empheq}[box={\BgBox}]{equation}
\vec{E} = \vec{V} + \vec{I_A} \vec{Z_S} = \vec{V} + \vec{I_A} (R_A + j X_S) 
\end{empheq}

或以絕對值表示

\begin{empheq}[box={\BgBox}]{equation}
E = \sqrt{ (V \cos \theta + I_A R_A)^2 + (V \sin \theta \pm I_A X_S)^2 } (\text{在電阻電感性負載時為加，在電容性負載時為減})
\end{empheq}

因 $X_S >> R_A$ ， $Z_S \approx X_S$ ，可畫出近似等效電路

\begin{circuitikz}
\draw (0, -4)
  to [sV, l_=$E$] (0, 0)
  to [L=$X_S$, cute, -o] ++(3, 0);
\draw (0, -4)
  to [short, -o] ++(3, 0);
\draw[<->] (3, -0.1) -- (3, -3.9);
\node[] at (3.3, -2) {$V$};
\end{circuitikz}

## 同步發電機的特性曲線

### 無載飽和曲線

又稱開路特性曲線(open circuit curve, OCC)，使發電機不接負載，以同步轉速運轉，將激磁電流由零逐漸增加，量測開路端電壓(也是無載感應電勢)V與激磁電流 $I_F$ 的關係。當磁路接近飽和時，磁通不再線性增加，因此又稱無載飽和特性曲線。

\begin{circuitikz}
\draw[->] (0, 0) -- (0, 4) node[above] {$V_o$};
\draw[->] (0, 0) -- (5.3, 0) node[right] {$I_F$};
\draw[thick, blue] plot[smooth] coordinates{(0, 0) (3.5, 3.5) (5, 4.1)};
\node[] at (2.5, -0.4) {OCC};
\end{circuitikz}

### 短路特性曲線

又稱短路特性曲線(short circuit curve, SCC)，使發電機輸出端電流表(短路)，以同步轉速運轉，將激磁電流由零逐漸增加，量測電樞電流 $I_S$ 與激磁電流 $I_F$ 的關係。因電樞反應產生去磁作用，不易飽和，使曲線為一直線。

\begin{circuitikz}
\draw[->] (0, 0) -- (0, 4) node[above] {$I_S$};
\draw[->] (0, 0) -- (5, 0) node[right] {$I_F$};
\draw[thick, red] plot[smooth] coordinates{(0, 0) (4, 4)};
\node[] at (2.5, -0.4) {SCC};
\end{circuitikz}

## 外部特性曲線

使發電機同步轉速運轉，並將激磁電流 $I_F$ 維持為一固定值，在負載功因 $\cos \theta$ 固定下，變更負載大小，量測負載端電壓V與負載電流 $I_L=I_A$ 的關係，又稱負載特性曲線。

1. 功因滯後: $I_L$ 上升，去磁效應大
2. 功因超前: $I_L$ 上升，增磁效應大
3. 功因為1: $I_L$ 上升，磁通緩慢減弱

\begin{circuitikz}
\draw[->] (0, 0) -- (0, 4) node[above] {$V$};
\draw[->] (0, 0) -- (5, 0) node[right] {$I_L$};
\draw[red, thick] plot[smooth] coordinates{(0, 2) (2.4, 2.8) (4.5, 3.2)} node[right] {電容性負載(超前)};
\draw[blue, thick] plot[smooth] coordinates{(0, 2.7) (2.4, 2.8) (4.5, 2.5)} node[right] {電阻性負載};
\draw[magenta, thick] plot[smooth] coordinates{(0, 3.5) (2.4, 2.8) (4.5, 1.5)} node[right] {電感性負載(滯後)};
\end{circuitikz}

### 激磁特性曲線

在負載功因 $\cos \theta$ 和端電壓 V不變的情況下，負載電流 $I_L$ 和激磁電流 $I_F$ 的關係。

\begin{circuitikz}
\draw[->] (0, 0) -- (0, 4) node[above] {$V$};
\draw[->] (0, 0) -- (5, 0) node[right] {$I_L$};
\draw[magenta, thick] plot[smooth] coordinates{(0, 2) (2.5, 2.4) (4.5, 3)} node[right] {電阻性負載};
\draw[blue, thick] plot[smooth] coordinates{(0, 2) (2.5, 3) (4.5, 4.1)} node[right] {電感性負載(滯後)};
\draw[red, thick] plot[smooth] coordinates{(0, 2) (2.5, 1.8) (4.5, 1.4)} node[right] {電容性負載(超前)};
\end{circuitikz}


## 同步阻抗與短路比

\begin{empheq}[box={\TitleBox[同步阻抗]}]{equation}
Z_S = \frac{\text{無載相電壓} V_o}{\text{電樞繞組短路電流} I_s} 
\end{empheq}

\begin{empheq}[box={\TitleBox[百分比同步阻抗標么值]}]{equation}
Z_{S(PU)} = \frac{Z_S}{Z_{S(b)}} = \frac{\frac{V_o}{I_{S1}}}{\frac{V_o}{I_{SA}}} = \frac{\text{額定電樞電流} I_{SA}}{\text{短路電樞電流} I_{S1}}
\end{empheq}

百分比同步阻抗是百分比同步阻抗標么值以百分比形式表示

\begin{empheq}[box={\TitleBox[百分比同步阻抗]}]{equation}
Z_S \% = Z_{S(PU)} \times 100 \%
\end{empheq}

因SCC為一直線，所以 $I_{S1} : I_{SA} = I_{F1} : I_{F2}$

\begin{empheq}[box={\TitleBox[短路比]}]{equation}
K_S = \frac{\text{無載時感應額定電壓之激磁電流} I_{F1}}{\text{滿載時感應額定電壓之激磁電流} I_{F2}}
 = \frac{I_{S1}} {I_{SA}} 
     = \frac{1}{Z_S(PU)}
\end{empheq}

1. 短路比小(0.6 ~ 1.0): 同步阻抗較大，電樞反應大，電樞安匝多，用銅量多，輸出電壓較不穩定，電壓調整率大
2. 短路比大(0.9 ~ 1.2): 同步阻抗較小，電樞反應小，電樞安匝少，用鐵量多，輸出電壓較為穩定，電壓調整率小

## 功率及效率

\begin{empheq}[box={\TitleBox[輸出功率]}]{equation}
P_o = S \cos \theta = 3 \times\text{相端電壓} \times V \text{相電流} I \times \cos \theta (\text{三相})
\end{empheq}

若忽略 R_A，則

\begin{empheq}[box={\TitleBox[輸出功率]}]{equation}
P_o = \frac{3 \times \text{相感應電勢} \times E \text{相端電壓} V}{X_S}  \sin \delta = \frac{3 \times \text{線感應電勢} \times E_l \text{線電壓} V_l}{X_S} \sin \delta
\end{empheq}

由此可知，輸出功率和 $\sin \delta$ 成正弦含數變化，在 $\sin \delta = 1$ 時得到對大輸出功率

\begin{empheq}[box={\TitleBox[效率]}]{equation}
\eta = \frac{P_o}{P_i} \times 100 \% = \frac{P_o}{P_o + P_{loss}} = \frac{ S \cos \theta }{S \cos \theta + P_{loss}} \times 100 \%
\end{empheq}

## 同步發電機的追逐現象

* 同步發電機為了適應新的負載，持續一段時間的來回擺動，造成轉速不穩定
* 可以在轉子磁極之極面的線槽內加裝**阻尼繞組**，抑制追逐現象

## 同步發電機的並聯

### 並聯應具備的條件

* 發電機條件

1. 電壓大小相同(不同會產生無效環流，使電壓大小趨近相等)
2. 相位相同(不同會產生有效環流/整步電流，產生整步功率，使相位趨近相同)
3. 相序相同(會使兩電發電機產生**極大環流**，使發電機燒毀)
4. 頻率相同(會產生週期性大小變化的無效環流)
5. 波形相同(會產生無效環流，造成損失)

* 原動機的條件

1. 以固定角速度運轉
2. 具有相同斜率的速率-負載曲線


### 負載分配

1. 實功率(有效功率)

    增加原動機的轉速，可以增加發電機的轉速，使該發電機實功率負擔提昇，其他發電機實功率下降
2. 需功率(無效功率)

    增加某機激磁電流，使該機感應電勢上升，功率因數角變大，電流滯後相位變大(電流增大)，負載角變小，使該機虛功率負擔增加，其他機虛功率減少


* 不論是調整實功率或虛功率，並聯發電機分擔的實/虛功率總和不變




