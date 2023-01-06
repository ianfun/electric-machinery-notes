# CH3 - 直流電動機

## 直流電動機的原理

* 弗萊明左手定則(電動機定則) - 載流導體在磁場中受力的方向

中指(必須先有) - 電流方向: I(電能)
食指(轉換媒介) - 磁力線方向: B(磁能)
大拇指(才能產生) - 運動方向: F(機械能、動能)

* 一馬力(hp) = 746 瓦特
* 一公斤重等於9.8牛頓

## 直流電動機的轉矩

### 載流線圈在磁場中所受力的轉矩

單一線圈邊的轉矩

\begin{equation}
T = F r (\text{牛頓 - 公尺})
\end{equation}

* $F$: 電磁力 (牛頓)
* $r$: 該線圈邊到旋轉中心的垂直距離

一匝(2線圈邊)的轉矩

\begin{equation}
T = 2 F r (\text{牛頓 - 公尺})
\end{equation}

### 直流電動機的總轉矩

\begin{equation} \label{dc-motor-t}
\begin{split}
T &= F r  \\
  &= Z B_{AV} I \ell r \\
  &= Z \frac{P \phi}{2 \pi r \ell} \frac{I_A}{a} \ell r \\
  &= \frac{PZ}{2 \pi a} \phi I_A
\end{split}
\end{equation}

設常數 $K_T = \frac{PZ}{2 \pi a}$ ，則可以寫成

\begin{equation}
T = K_T \phi I_A
\end{equation}

得知當 $K_T$ 固定時，直流電動機轉矩和**磁通量**($\phi$) 和**電樞電流**($I_A$)成正比

直流電機的反電勢(Counter or Back electromotive force) $E_B$ 如同公式 \eqref{e-motor}。這裡用 $E_B$ 代表反電勢。

\begin{equation} \label{eq-dc-motor}
E_B = \frac{PZ}{60a} \phi n
\end{equation}

或用常數 $K_E$ 代表 $\frac{PZ}{60a}$

\begin{equation}
E_B = K_E \phi n
\end{equation}

得知當 $K_E$ 固定時，直流電動機反電勢和**磁通量**($\phi$) 和**轉速**(n)成正比

## 轉速和角速度

\begin{equation} \label{eq-dc-motor-omega}
\omega = 2 \pi s = 2 \pi \frac{n}{60} (\text{弧度/秒, rad/s})
\end{equation}

$\omega$: 電樞的旋轉角速度
$s$: 每秒轉速(rps)
$n$: 每分鐘轉速(rpm)

## 速率調整率

和電壓調整率公式 \eqref{eq-vr} 比較，電壓換成轉速

\begin{equation}
\text{速率調整率} SR \% = \frac{n_{NL} - n_{FL}}{n_{FL}} \times 100 \%
\end{equation}

## 直流電動機的功率轉換

可參考直流發電機的損失-功率轉換補份

\begin{equation}
\text{內生機械功率} P_M = E_B I_A = P_I - P_C (\text{瓦特, W})
\end{equation}

* $P_M$: 內生機械功率或稱為電磁功率，$P_M = E_B I_A$
* $P_I$: 電樞電路的輸入功率，$P_I = V_L I_L = V_L I_A$
* $P_C$: 電樞繞組消耗的功率簡稱電樞銅損，$P_C = I_A ^ 2 R_A$

用 $P_M = E_B I_A$ 帶入公式 \eqref{eq-dc-motor}

\begin{equation}
P_M = \frac{PZ}{60a} \phi n \times I_A (\text{瓦特, W})
\end{equation}

將上式乘以 $2 \pi$ 

\begin{equation*}
P_M = \frac{2\pi PZ}{2 \pi 60a} \phi n \times I_A = \frac{PZ}{2 \pi a} \phi I_A \frac{2 \pi}{60} n
\end{equation*}

將公式 \eqref{dc-motor-t} 帶入上式，和角速度公式\eqref{eq-dc-motor-omega} 可得

\begin{equation}
\text{內生機械功率} = T \frac{2 \pi}{60} n = T \omega
\end{equation}

由此可知當轉速不變時，內生機械功率和轉矩成正比；當轉矩不變時，內生機械功率和磁通量成正比

或者由內生機械功率和磁通量得到轉矩

\begin{equation}
T = \frac{P_M}{\phi} = \frac{60}{2 \pi} \times \frac{P_M(\text{瓦特})}{n(\text{rmp})} \approx 9.55 \times \frac{P_M(\text{瓦特})}{n(\text{rpm})}
\end{equation}

一公斤重等於9.8牛頓

\begin{equation}
T \approx 0.974 \times \frac{P_M(\text{瓦特})}{n(\text{rpm})} = 974 \times \frac{P_M(\text{千瓦})}{n(\text{rpm})}
\end{equation}

輸出機械功率

\begin{equation}
\text{輸出機械功率} P_o = P_M - \text{機械損失} - \text{雜散損失}
\end{equation}

## 直流電動機的等效電路

分類: 和直流電機的分類相同

\begin{tikzpicture}
[
   level distance=18mm,
   every node/.style={fill=red!50,inner sep=5pt},
   level 1/.style={sibling distance=30mm,nodes={fill=yellow!45}},
   level 2/.style={sibling distance=15mm,nodes={fill=red!20}},
   level 3/.style={sibling distance=35mm,nodes={fill=blue!30}},
   level 4/.style={sibling distance=20mm,nodes={fill=green!20}}
]
\tikzstyle{every node}=[font=\small]
  \node[draw] {直流電動機}
    child {node[draw] {他(外)激式}}
    child {node[draw] {自激式} 
                child {node[draw] {他激式}}
                child {node[draw] {串激式}}
                child {node[draw] {分激式}}
                child {node[draw] {複激式}
            child {node[draw] {依連接方式}
                    child {node[draw] {長並聯式}}
                child {node[draw] {短並聯式}}
            }
                    child {node[draw] {依磁通方向}
                child {node[draw] {激複激式}}
                child {node[draw] {差複激式}}
            }
           }
       }
        ;
\end{tikzpicture}

依照 KVL 和 KCL 來分析

### 他(外)激式

\begin{circuitikz}
\draw (0, 0)
  to [open, v=$V_F$] (0, 3)
  to [short, i=$I_F$] (1.5, 3);
\draw (0, 0)
  to [short] (1.5, 0)
  to [inductor=$R_F$, cute] (1.5, 3);
\node[elmech] at (5, 1.5) (M) {M};
\node[] at (5.7, 1.5) {$ R_A$};
\node[] at (5.2, 0.7) {$V_B$};
\draw (3, 3)
  to [battery, v=$V_L$, i=$I_L$] (3, 0)
  to [short] (5, 0)
  to [short] (M.south);
\draw (M.north)
  to [short] (5, 3)
  to [short, i<=$I_A$] (3, 3);
\end{circuitikz}

\begin{equation}
\begin{split}
&I_F = \frac{V_F}{R_F} \\
&I_A = I_L \\
&V_L = I_A R_A + E_B + V_B
\end{split}
\end{equation}

### 分(並)激式

\begin{circuitikz}
\node[elmech] at (5, 1.5) (M) {G};
\node[] at (5.7, 1.5) {$ R_A$};
\node[] at (5.3, 0.7) {$V_B$};
\draw (2, 0) to [inductor=$R_F$, i<=$I_F$, cute] (2, 3);
\draw (0, 3)
  to [battery, v=$V_L$, i=$I_L$] (0, 0)
  to [short, -*] (2, 0) 
  to [short] (5, 0)
  to [short] (M.south);
\draw (M.north)
  to [short] (5, 3)
  to [short, i<=$I_A$, -*] (2, 3)
  to [short, i<=$I_L$] (0, 3);
\end{circuitikz}

\begin{equation}
\begin{split}
&I_F = \frac{V_L}{R_F} \\
&I_A = I_L - I_F \\
&V_L = I_A R_A + E_B + V_B = I_F R_F
\end{split}
\end{equation}

### 串激式

\begin{circuitikz}
\node[elmech] at (4, 1.5) (M) {G};
\node[] at (4.7, 1.5) {$R_A$};
\node[] at (4.3, 0.7) {$V_B$};
\draw (0, 3)
  to [battery, v=$V_L$, i=$I_L$] (0, 0)
  to [inductor=$R_S$, i<=$I_S$] (4, 0)
  to [short] (M.south);
\draw (M.north)
  to [short, i<=$I_A$] (4, 3)
  to [short] (2, 3)
  to [short, i<=$I_L$] (0, 3);
\end{circuitikz}

\begin{equation}
\begin{split}
&I_S = I_F = I_L \\
&V_L = I_A (R_A + R_S) + E_B + V_B
\end{split}
\end{equation}


### 長並聯複激式

\begin{circuitikz}
\node[elmech] at (4, 3) (M) {G};
\node[] at (4.7, 2.8) {$R_A$};
\node[] at (4.3, 2) {$V_B$};
\draw (0, 4)
  to [battery, v=$V_L$, i=$I_L$] (0, 0)
  to [short] (4, 0)
  to [R=$R_S$, i<=$I_S$] (M.south);
\draw (M.north)
  to [short] (4, 4)
  to [short, i<=$I_A$] (2, 4)
  to [short, i<=$I_L$] (0, 4);
\draw (2, 4)
  to [inductor=$R_F$, i=$I_F$, *-*] (2, 0);
\end{circuitikz}

\begin{equation}
\begin{split}
&I_L = I_F + I_S \\
&I_S = I_S \\
&V_L = I_A (R_A + R_S) + E_B + V_B
\end{split}
\end{equation}

### 短並聯複激式

\begin{circuitikz}
\node[elmech] at (4, 2.5) (M) {G};
\node[] at (4.7, 2.3) {$R_A$};
\node[] at (4.3, 1.5) {$V_B$};
\draw (0, 4)
  to [battery, v=$V_L$, i=$I_L$] (0, 0)
  to [short] (4, 0);
\draw (M.north)
  to [short] (4, 4)
  to [short, i<=$I_A$] (2, 4)
  to [short, i<=$I_L$] (0, 4);
\draw (M.south)
  to [short] (4, 1);
\draw (2, 4)
  to [inductor=$R_F$, i=$I_F$, *-] (2, 1)
  to [short, -*] (4, 1)
  to [short] (4, 0);
\end{circuitikz}

\begin{equation}
\begin{split}
&I_L = I_S = I_F + I_A \\
&V_L = I_S R_S + I_A R_A + E_B + V_B
\end{split}
\end{equation}

### 直流電動機的特性曲線

曲線名稱 | 固定條件(控制變數) | 調整項目(自變數)
------   | ------             | ------
轉速特性 | $V_L$ 、 $I_F$      | 負載大小
轉矩特性 | $V_L$ 、 $I_F$      | 負載大小

#### 他(外)機式

#### 轉速特性

當端電壓和 $R_F$ 保持不變，當負載增加，只有電樞電流 $I_A$ 隨附載而增加，但因為 $R_A$ 很小，造成的壓降 $I_A R_A$ 很小，因轉速和電樞繞阻電壓 $V_A$ 成正比，轉速下降不大。
若考慮電樞反應，則為紅色曲線，否則為藍色曲線
* 可視為**定速電動機**
* 激磁電路不可開路(因轉速和磁通量成反比，磁通量 $\phi$ 不得為零)，否則轉速會生的很高，產生大量的離心力，可能使電激燒毀，或發生危險。

\begin{equation*}
T = \frac{V_L - I_A R_A}{K_E \phi}
\end{equation*}

\begin{tikzpicture}
\node[] at (-0.5, -0.5) {0};
\node[] at (-0.5, 1) {$n$}; 
\node[] at (1, -0.5) {$I_A$}; 
\draw[->] (0, 0) -- (0, 5);
\draw[->] (0, 0) -- (5, 0);
\draw [red, thick] (0, 4) .. controls (4.2, 4.2) and (4.2, 4.4).. (5, 4.55);
\draw [blue, thick] (0, 4) .. controls (4.2, 3.8) and (4.2, 3.6).. (5, 3.4);
\end{tikzpicture}

#### 轉矩特性

轉矩和電樞電流成正比。若考慮電樞反應，則為紅色曲線，否則為藍色曲線

\begin{equation*}
T = K_T \phi I_A
\end{equation*}

\begin{tikzpicture}
\node[] at (-0.5, -0.5) {0};
\node[] at (-0.5, 1) {$T$}; 
\node[] at (1, -0.5) {$I_A$}; 
\draw[->] (0, 0) -- (0, 5);
\draw[->] (0, 0) -- (5, 0);
\draw [red, thick] (0, 0) .. controls (3.8, 3) and (3.8, 3).. (5, 3.2);
\draw [blue, thick] (0, 0) -- (4.5, 4.5);
\end{tikzpicture}

#### 用途

因可廣泛或精確的調整轉速，通常應用在大型壓縮機、斬壓機等。

### 分(並)激式

#### 轉速特性

並聯電壓相同，不受負載變化引響，可視為和他激式相同條件

* 可視為**定速電動機**
* 不能開路以避免電機燒毀或危險

#### 轉矩特性

和他激式電動機的轉矩特性相同

#### 用途

車床、鑽床、應刷機、鼓風機(電壓調整率 $VR\%$ 小)

### 串激式

#### 轉速特性:

* $I_A = I_F = I_L$
* 當輕載時，電樞電流 $I_A$ 和磁通量($\phi$)都很小(因 $I_F$ 小)，轉速迅速上升，而有飛脫(Run away)的失控的危險。
* 當負載逐漸增加時，轉速上升，呈現反比的曲線。
* 當負載大、磁飽和後，轉速下降趨緩

\begin{equation*}
n = \frac{V_L - I_A (R_A + R_S)}{K_E \phi}
\end{equation*}

\begin{tikzpicture}
\node[] at (-0.5, -0.5) {0};
\node[] at (-0.5, 1) {$n$}; 
\node[] at (1, -0.5) {$I_A$}; 
\draw[->] (0, 0) -- (0, 5);
\draw[->] (0, 0) -- (5, 0);
\draw [red, thick] (0, 3.5) .. controls (1, 1) and (2.5, 0.66).. (4.5, 0.5);
\end{tikzpicture}

#### 轉矩特性

* 因磁通 $\phi$ 和電樞 $I_A$ 隨負載而增加，故轉矩和負載成平方正比(拋物線)(輕載)。如圖中藍色部分，當磁通飽和後，磁通 $\phi$ 不再增加，故轉矩和負載成正比(重載)，如圖中紅色部分

\begin{equation*}
T = K_T \phi I_A
\end{equation*}

\begin{tikzpicture}
\begin{axis}[yticklabels=\empty, xticklabels=\empty,axis lines = left,
    xlabel = $I_A$,
    ylabel = $T$]
\addplot[blue, thick, domain=0:10, samples=50] {x^2};
\addplot[red, thick, domain=10:20] {x * 10};
\end{axis}
\end{tikzpicture}

* 串激式電動機可視為**變速電動機**，且有甚高的啟動轉矩，能在低速時產生低轉矩

#### 用途

在輕載時，轉速自動變高，可用在起重機、升降機、電器火車，甚至用於小馬力的果汁機、手提電鑽，是一種交直流兩用的普用式小型電動機。

### 複激式

#### 轉速特性

\begin{tikzpicture}
\node[] at (-0.2, -0.2) {0};
\node[] at (-0.4, 1) {$n$}; 
\node[] at (1, -0.4) {$I_A$}; 
\draw[->] (0, 0) -- (0, 5);
\draw[->] (0, 0) -- (5, 0);
\draw [red, thick] (0, 4) .. controls (1, 1) and (2.5, 0.66).. (4.5, 0.5); % 串:紅
\draw [blue, thick] (0, 3) .. controls (4.2, 2.8) and (4.2, 2.6).. (5, 2.4); % 並:藍
\draw [dashed, gray] (0, 3) -- (4.5, 3);
\draw [green, thick] (0, 3) .. controls (4.2, 3.2) and (4.2, 3.4).. (5, 3.6); % 差:綠
\draw [yellow, thick] (0, 3) .. controls (4.2, 2.6) and (4.2, 2.3).. (5, 2); % 激:黃
\end{tikzpicture}

* 紅色: 串激式
* 藍色: 並激式和自激式
* 綠色: 差激式
* 黃色: 激複激式

#### 轉矩特性

\begin{tikzpicture}
\node[] at (-0.2, -0.2) {0};
\node[] at (-0.4, 1) {$n$}; 
\node[] at (1, -0.4) {$T$}; 
\draw[->] (0, 0) -- (0, 5);
\draw[->] (0, 0) -- (5, 0);
\begin{scope}[thick]
\draw [red]   (0, 0) .. controls (1.6, 0.3) and (1.6, 0.3) .. (4, 5);
\draw [green] (0, 0) .. controls (4,   2) and (4, 2) .. (5, 1);
\draw [blue]  (0, 0) .. controls (1, 0.4) and (2.5, 2) .. (4, 4.5);
\draw [yellow](0, 0) -- (4.5, 4.5);
\node[draw, green] at (0, -1) {差複激式};
\node[draw, red] at (1.5, -1) {串激式};
\node[draw, yellow] at (4, -1) {分激式/他激式};
\node[draw, blue] at (6, -1) {激複激式};
\end{scope}
\end{tikzpicture}

## 直流電動機的轉速控制

1. 磁場控速法
  1. 分激式
    在分激場電路串聯一可變電阻器 $R_X$，$R_X$**愈大**，場電流 $I_F$ 愈小，磁通 $\phi$ 愈小，**轉速愈快**。
  2. 串激式
    在分激場電路並聯一可變電阻器 $R_X$，$R_X$**愈小**，變阻器分流 $I_X$ 愈大，場電流 $I_F$ 愈小，磁通 $\phi$ 愈小，**轉速愈快**。
  * 簡單有效的控速法
  速率調整範圍只限於額定電壓以上，無法低於額定轉速調整
2. 電樞電阻控制法
  在電樞繞阻串聯一可變電阻器 $R_X$，當 $R_X$ **愈大**，端電壓 $V_L$ 愈大 ($V = I R$，R大)，反電勢 $E_B$ 減少，**轉速愈慢**。

  * 優點為簡單方便、費用低廉
  * 缺點為電樞電路功率損失大、效率低
  * 通常用於1hp以下之小型電動機
  * 速率調整範圍只限於額定電壓以下，無法高於額定轉速調整
3. 電壓式速率控制(改變電樞電壓)
  透過改變端電壓 $V_L$ 來控制轉速，$V_L$ 愈大，轉速愈快。

  * 因端電壓 $V_L$ 改變，繞阻磁通也會改變，容易造成轉速不穩定，故自激式電動機不適用，只適用於外激式電動機。
  * 因是外激式，$V_L = V_A$，轉速和 $V_L$ 成正比。

### 直流電動機的轉向控制

只要調換磁場極性或電樞電流方向，就可以使電動機反轉(相對於原本轉向)；但是如果兩個同時改變，則轉向將維持不變。

* 因激磁電流 $I_S$ 遠小於電樞電流 $I_A$，故改變磁場極性為較常採用的方法
* 在複激式電動機，為了方便接線，通常以改變電樞電流為宜。
* 可以使用兩極雙頭的切換開關，或用電磁開關電路也可以。

### 直流電動機的制動控制

在切離電源後，能克服轉動慣性而立即停止轉動的裝置，稱為制動(Brake)。

1. 機械制動(Mechanical brake): 用手或腳踩煞車片的制動方式
2. 空、油壓制動: 以空氣壓縮機或油壓機來啟動煞車的制動方式
3. 電磁制動(Electromagnetic brake): 以電磁鐵吸力的制動方式
4. 電氣制動(Electric brake): 有動力制動、逆轉制動和再生制動等
  1. 動力制動(Dynamic braking): 斷電後，在電樞兩端並聯一低電阻值電阻器，依 $P = \frac{V^2}{R}$，高速消耗剩餘能量，讓電動機停止轉動。
  2. 逆轉制動(Reverse braking): 斷電的瞬間，將電樞電流反接，使電動機產生反向轉矩，達到制動效果。
  3. 再生制動(Regenerative brake): 又稱回饋制動或回生制動，將電動機當成發電機運轉，將位能、動能等轉成電能，產生反轉轉矩，是能量回收(Energy recovery)的一總。被廣泛應用於純電動車、混合動力汽車、鐵路機車車輛上。

### 直流電動機的損耗

與直流發電機相同

\begin{equation}
\eta = \frac{\text{輸入功率}}{\text{輸出功率}} = \frac{P_o}{P_i} = \frac{P_o}{P_o + P_{loss}} \times 100 \%
\end{equation}

### 直流發電機的功率轉換

\begin{equation}
\begin{split}
&\text{輸入電功率} - (\text{串激場磁通損失} + \text{分激場磁通損失}) = \text{輸出機械功率} \\
& P_I - (P_{RF} + P_{RS}) = P_A = V_A I_A
\end{split}
\end{equation}

\begin{equation}
\begin{split}
&\text{電樞端電功率} - (\text{電樞銅損} + \text{電刷接觸損}) = \text{電磁功率} \\
&P_A - (P_{RA} + P_B) = P_M = E_B I_A
\end{split}
\end{equation}

\begin{equation}
\begin{split}
& \text{電磁功率} - (\text{無載旋轉損失} + \text{雜散負載損}) = \text{電磁功率} \\
&P_M - (P_{NL} + P_{stray}) = P_o = \omega T_0
\end{split}
\end{equation}
