# CH6 單相感應電動機

1. 單相感應電動機只會產生交變磁場，即大小、方向會變化，但不會旋轉的磁場
2. 分為 啟動繞組/輔助繞組 和 運轉繞組/主繞組，當兩繞組相差 $90^{\circ}$ 電機角時，會產生較平順的選轉磁場
3. 可連接適當電容器使啟動繞組與運轉繞組相差 $90^{\circ}$ 電機角
4. 將啟動繞組與運轉繞組任一反接，轉向會相反，如果將電源反接，則兩繞組同時反接，不會反向運轉
5. 通常用於只有單向電源或馬力較小的場合

## 單相感應電動機的分類

### 分相式感應電動機

\begin{circuitikz}[american]
\draw (0, 0)
  to [short, o-*] ++(0.5, 0) coordinate (LU)
  to [L=$L_r$, cute] ++(0, -2) coordinate (LD)
  to [short, *-o] ++(-0.5, 0);
\draw (LU)
  to [short] ++(2, 0) coordinate (RU)
  to [cute open switch] ++(0, -2) coordinate (RD)
  to [L=$L_s$, cute] ++(-2, 0);
\node[elmech] at (1.65, -1){IM};
\end{circuitikz}

當轉速達到 $75\%$ 同步轉速時，離心開關接點跳脫，完成啟動

### 電容式感應電動機

\begin{circuitikz}[american]
\ctikzset{capacitors/scale=0.6}
\draw (0, 0)
  to [short, o-*] ++(0.5, 0) coordinate (LU)
  to [L=$L_r$, cute] ++(0, -2.2) coordinate (LD)
  to [short, *-o] ++(-0.5, 0);
\draw (LU)
  to [short] ++(2, 0) coordinate (RU)
  to [C=$C_s$] ++(0, -1.1)
  to [cute open switch] ++(0, -1.1) coordinate (RD)
  to [L=$L_s$, cute] ++(-2, 0);
\node[elmech] at (1.65, -1.1){IM};
\end{circuitikz}

啟動繞組串連一乾式交流電解電容器和離心開關

### 永久電容式感應電動機

\begin{circuitikz}[american]
\ctikzset{capacitors/scale=0.6}
\draw (0, 0)
  to [short, o-*] ++(0.5, 0) coordinate (LU)
  to [L=$L_r$, cute] ++(0, -2) coordinate (LD)
  to [short, *-o] ++(-0.5, 0);
\draw (LU)
  to [short] ++(2, 0) coordinate (RU)
  to [C=$C$] ++(0, -2)
  to [L=$L_s$, cute] ++(-2, 0);
\node[elmech] at (1.65, -1){IM};
\end{circuitikz}

啟動繞組串連一油浸式電容器

### 雙值電容式感應電動機

\begin{circuitikz}[american]
\ctikzset{capacitors/scale=0.6}
\draw (0, 0)
  to [short, o-*] ++(0.5, 0) coordinate (LU)
  to [L=$L_r$, cute] ++(0, -2.2) coordinate (LD)
  to [short, *-o] ++(-0.5, 0);
\draw (LU)
  to [short] ++(2, 0) coordinate (RU)
  to [C=$C_r$] ++(0, -2.2)
  to [L=$L_s$, cute] ++(-2, 0);
\node[elmech] at (1.65, -1){IM};
\draw (RU)
  to [short, *-] ++(0.8, 0)
  to [cute open switch] ++(0, -1.1)
  to [C=$C_s$] ++(0, -1.1)
  to [short, -*] ++(-0.8, 0);
\end{circuitikz}

啟動電容 $C_s$ 用高容量、耐壓低交流電解電容器，串連離心開關

運轉電容 $C_r$ 用低電容量、耐壓高油浸式電容器

### 蔽極式感應電動機

由未蔽極處往已蔽極處轉

## 感應電動機的試驗

### 電阻試驗

再定子繞組以Y接或 $\Delta$ 接 ，並加入直流電源，量測任兩端電壓V和電流I

\begin{empheq}[box={\BgBox}]{gather}
\text{線間電阻} R_L = \frac{V}{I} \\
\Delta \text{接各相電阻} = \frac{3}{2} R_L \\
Y \text{接各相電阻} = \frac{R_L}{2}
\end{empheq}

### 無載試驗

類似變壓器的開路試驗，電動機空轉不接負載，量測線電壓 $V_{OC(L)}$ 、線電流 $I_{OC{L}}$ 、及無載功率損失 $P_{OC{T}}$

\begin{empheq}[box={\BgBox}]{gather}
\text{每相無載功率損失} P_{OC} = \frac{P_{OC(T)}}{3} \\
\text{鐵損電流} I_C = \frac{P_{OC}}{V_{OC}} \\
\text{磁化電流} I_M = \sqrt{{I_{OC}}^2 - {I_C}^2} \\
\text{激磁電導} G_C = \frac{I_C}{V_{OC}} \\
\text{激磁導納} Y_O = \frac{I_{OC}}{V_{OC}} \\
\text{激磁電納} B_M = \frac{I_M}{V_{OC}} = \sqrt{{Y_o}^2 - {G_C}^2} 
\end{empheq}

### 堵轉試驗

類似變壓器的短路實驗，電動機轉子堵住不動，量測線電壓 $V_{SC(L)}$ 、線電流 $I_{SC(L)}$ 及總功率 $P_{SC(T)}$

\begin{empheq}[box={\BgBox}]{gather}
P_{SC} = \frac{P_{SC(T)}}{3} \\
\text{等效電阻} R_{eq1} = \frac{P_{SC}}{{I_{SC}}^2} \\
\text{等效阻抗} Z_{eq1} = \frac{V_{SC}}{I_{SC}} \\
\text{等效電抗} X_{eq1} = \sqrt{{Z_{eq1}}^2 - {R_{eq1}}^2} 
\end{empheq}

## 感應電動機的制動

* 動力制動

  在電動機切斷電源後，立刻輸入直流電源到定子繞組，使定子繞阻從旋轉磁場變為固定磁場
* 逆轉制動

  輸入使電動機逆轉的電源，產生逆向轉矩
* 再生制動

  當轉速超過同步轉速時，電動機當做發電機，可限制速度
* 單相制動

  運轉中的三相感應電動機，切斷交流電源其中一相，使電動機成為單向運轉

## 同步電動機相序判斷

以下為正相序的判斷

\begin{circuitikz}[american]
\draw (0, 0) 
  to [C, *-o] ++(90:2);
\draw (0, 0)
  to [lamp, l_=$L_2$, -o] ++(210:2);
\draw (0, 0)
  to [lamp=$L_1$, -o] ++(330:2);
\node[draw] at (0, -2) {$L_1$ 亮 $\rightarrow$ $L_2$ 亮};
\end{circuitikz}
\begin{circuitikz}[american]
	\draw (0, 0) 
	to [L, cute, *-o] ++(90:2);
	\draw (0, 0)
	to [lamp, l_=$L_2$, -o] ++(210:2);
	\draw (0, 0)
	to [lamp=$L_1$, -o] ++(330:2);
	\node[draw] at (0, -2) {$L_2$ 亮 $\rightarrow$ $L_1$ 亮};
\end{circuitikz}

## 二明一滅法

\begin{circuitikz}[american]
\draw (-0.2, 0) to [short, o-o] ++(5, 0) node[right] {$A_1$};
\draw (0.3, 1) to [short, o-o]  ++(5, 0) node[right] {$B_1$};
\draw (-0.2, 2) to [short, o-o]  ++(5, 0) node[right] {$C_1$};
\node[elmech] at (-0.4, 1) { $G_1$ };
\draw (-0.2, -2) to [short, o-o]  ++(5, 0) node[right] {$A_2$};
\draw (0.3, -3) to [short, o-o]  ++(5, 0) node[right] {$B_2$};
\draw (-0.2, -4) to [short, o-o]  ++(5, 0) node[right] {$C_2$};
\node[elmech] at (-0.4, -3) { $G_2$ };
\draw (1, 2) to [lamp=$L_1$, *-*] ++(0, -6);
\draw (2.5, 1) to [lamp=$L_2$, *-*] ++(0, -4);
\draw (4, 0) to [lamp=$L_3$, *-*] ++(0, -2);
\end{circuitikz}

電壓大小 | 相位  | 頻率 | 相序 | 燈現象
----     | ----  | ---- | ---- | ----
相等     | 相同  | 相等 | 相同 | 二明一滅
稍益     | 稍異  | 相等 | 相同 | 二明一暗
相等     | 不定  | 稍異 | 相同 | 輪流明滅
相等     | 相同  | 相等 | 不同 | 三燈皆滅


