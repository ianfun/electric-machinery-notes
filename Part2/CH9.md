# CH9 特殊電機

## 步進電動機

步進電動機(step motor)分為

1. 可變磁阻式(variable reluctance, VR)

2. 永久磁鐵式(permanent magnet type, PM)
  
  - 轉子使用永久磁鐵
  - 較不受負載變動

3. 混合式(hybird type)
  
  - 轉矩大、步進角小，是目前最常用的機種
  - 轉子偏轉的誤差不會累積
  - 能用脈波精準的控制轉速、轉動角度，且只要用閉迴路控制，而不用開迴路

步進角: 一個脈波訊號讓轉子轉動的角度

\begin{empheq}[box={\BgBox}]{equation}
\text{步進角} \theta = \frac{360^{\circ}}{ m N }
\end{empheq}

m 為定子繞組相數，m為轉子齒輪數(凸極數)或磁鐵極數

轉速與脈波訊號的頻率乘正比

\begin{empheq}[box={\BgBox}]{equation}
\text{轉速} n = \frac{60 f}{N} \text{rpm}
\end{empheq}

## 伺服電動機

1. 啟動轉矩大
2. 轉子慣量小，轉子多做成細長形
3. 能正反轉控制
4. 輸出轉矩大致與輸入電壓乘正比，並轉向也依電壓正負而改變
5. 可用閉迴路系統(close-loop control system)來執行反饋控制/回授控制(feedback control)，可將電動機的執行結果與目標值比較，不斷的修正
6. 交流式的轉子為鼠籠式，定子有控制繞組與啟動繞組
  - 當控制信號電流超前固定繞組 $90^{\circ}$ ，轉子順時鐘旋轉
  - 當控制信號電流滯後固定繞組 $90^{\circ}$ ，轉子逆時鐘旋轉
7. 交流可用 PWM 訊號來控制轉子轉速、位置

## 直流無刷電機

1. 以霍爾元件來取代機械式換相
  1. 霍爾效應(Hall effect): 將通電流之固體導體置於磁場下，導體內的電荷載子受到勞侖茲力而偏向一邊，繼而產生電壓(霍爾電壓)
  2. 霍爾元件根據霍爾效應來使電動機穩定的往同一轉向運轉
2. 優點
  1. 比其他電動機效率還高
  2. 可用於輕薄短小化的設計
  3. 可以正逆轉控制

## 線性電動機

\begin{empheq}[box={\BgBox}]{equation}
\text{同步速率} n_s = 2 \text{極距} Y_p \text{電源頻率} f
\end{empheq}

