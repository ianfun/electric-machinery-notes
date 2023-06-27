---
title: 電工機械筆記
author: 林亦恩
geometry: margin=1in
CJKmainfont: "Noto Sans CJK TC"
mainfont: "Ubuntu Mono"
documentclass: report
---

# CH5 三相感應電動機

## 基本原理

當定子繞組連接三相電源，建立旋轉磁場 ${\phi}_s$ ，此旋轉磁場切割轉子磁場繞組，感應轉子磁場電流 $I_2$ ，$I_2$ 產生轉子旋轉磁場 ${\phi}_r$ ，與定子磁場 ${\phi}_s$ 相互吸引形成電磁轉矩，使轉子傳轉

* 阿拉哥圓盤定理:  當磁鐵繞著金屬圓盤旋轉，則金屬圓盤會依磁鐵移動方向旋轉
* 旋轉磁場: 定子接三相電源，產生旋轉磁場
* 在時間上相差120度，在空間上也相差120度電機角
* 合成磁勢為一任一相最大磁動勢的 1.5 倍

\begin{circuitikz}
\draw[->, thick] (-0.3, 0) -- (10, 0) node[right] {$\omega t$};
\draw[->, thick] (0, -1.8) -- (0, 1.8) node[right] {$I_A$};
\draw[blue, thick, domain=0:10] plot (\x,{sin(\x r)});
\draw[red, thick, domain=0:10] plot (\x,{sin(\x r + 120)});
\draw[green, thick, domain=0:10] plot (\x,{sin(\x r + 240)});
\end{circuitikz}

## 同步轉速

\begin{empheq}[box={\BgBox}]{gather}
n_s = \frac{2}{P} \times 60 \times f \\
{\omega}_s = \frac{2 \pi n_s}{60}
\end{empheq}

單位: $n_s$: rpm ; ${\omega}_s$: rad/s

## 轉差率

\begin{empheq}[box={\BgBox}]{gather}
\text{轉差率} S = \frac{n_s - n}{n_s} \times 100\% \\
\text{轉子頻率} f_r = S f
\end{empheq}

\begin{tabular}{|p{2.2cm}|p{2cm}|p{7cm}|}
	\hline
	\rule[-1ex]{0pt}{2.5ex} 轉速 & 轉差率  & 說明  \\
	\hline
	\rule[-1ex]{0pt}{2.5ex} $n > n_s$ & $S < 0$  & 有外力幫忙使電動機有發電機的效果  \\
	\hline
	\rule[-1ex]{0pt}{2.5ex} $n = n_S$ & $S = 0$ &  有外力幫忙，轉差率為零 \\
	\hline
	\rule[-1ex]{0pt}{2.5ex} $0 < n < n_s$ & $0 < S < 1$  & 電動機正常運轉  \\
	\hline
	\rule[-1ex]{0pt}{2.5ex} $n = 0$  & $S = 1$ & 電動機靜止不動  \\
	\hline
	\rule[-1ex]{0pt}{2.5ex} $n < 0$ & $S > 1$ & 電動機轉向與旋傳磁場相反，有煞車作用，驅使電動機朝旋轉磁場方向運轉  \\
	\hline
\end{tabular}

* 滿載轉差率約再 $1\%$-$10\%$ 之間

## 三相感應電動機的構造

### 定子{-}

* 以薄矽鋼片製程
* 線槽分為分為小型和大型，小型多採用半閉口槽，大型多採用開口槽
* 定子繞組多採用雙層繞、分佈繞、短節距繞
* 可能是Y接或 $\Delta$ 接

\begin{tikzpicture}[scale=0.5]
   \draw[line width=0.8mm, fill=gray!50] (0,0) circle (4.2);
   \draw[fill=white] (-6:3.8) {
     \foreach \i in {0,20,...,350} {
        arc (\i-6:\i+6:3.8 )  -- (\i+6:3.5)
        arc (\i+6:\i+14:3.5) -- (\i+14:3.8 )
     }
   };
\end{tikzpicture}
 
### 轉子{-}

分為鼠籠式轉子和繞線式轉子，大多數為鼠籠式轉子

## 三相感應電動機的等效電路

\begin{circuitikz}[longL/.style = {cute inductor, inductors/coils=9, inductors/width=1.2}]
	\ctikzset{resistors/scale=0.7}
	\node[] at (1.6, -2) {定子每相};
	\node[] at (8.8, -2) {轉子每相};
	\draw (0, 0) 
	to [R=$R_1$, o-] ++(2, 0)
	to [L=$X_1$, cute, -*, i=$I_1$] ++(2, 0) coordinate (X)
	to [short, i=$I_{L1}$] ++(2, 0) coordinate (A)
	to [longL, l=$E_1$, cute] ++(0, -4) 
	to [short] ++(-2, 0);
	\draw (A) ++(1, 0)
	to [longL, l=$E_{2s}$] ++(0, -4)
	to [short] ++(5, 0)
	to [variable american resistor=$(\frac{1-S}{S})R_2$] ++(0, 4)
	to [R=$R_2$] ++(-2.5, 0) ++(-2.5, 0)
	to [L=$X_{2s}$, cute, i=$I_2$] ++(2.5, 0);
	\draw (X)
	to [short, i=$I_o$] ++(0, -0.7) coordinate (Y)
	to [short, *-] ++(-0.6, 0)
	to [R=$G_c$, i=$I_c$] ++(0, -2.6)
	to [short] ++(0.6, 0)
	to [short] ++(0, -0.7) coordinate (Z);
	\draw (Z)
	to [short, *-o] ++(-4, 0)
	to [open, v<=$V_1$] ++(0, 4);
	\ctikzset{inductors/coils=6}
	\ctikzset{inductors/width=0.8}
	\draw (Y)
	to [short] ++(0.6, 0)
	to [L=$B_m$, cute, i=$I_m$] ++(0, -2.6)
	to [short, -*] ++(-0.6, 0);
\end{circuitikz}

\begin{empheq}[box={\TitleBox[感應電勢]}]{gather}
\text{定子每相感應電勢} E_1 = 4.44 K_{W1} N_1 f \phi \\
\text{轉子每相感應電勢} E_2 = 4.44 K_{W2} N_2 f_r \phi
\end{empheq}

當轉子靜止時，若 $K_{W1} = K_{W2}$ ，則

\begin{empheq}[box={\BgBox}]{equation}
\frac{E_1}{E_2} = \frac{N_1}{N_2} = \text{匝數比} a 
\end{empheq}

當轉子旋轉時，因 $f_r = S f$ ，$f_r$ 與 E_{2r} 乘正比

\begin{empheq}[box={\BgBox}]{equation}
E_{2r} = S E_{2s}
\end{empheq}

\begin{empheq}[box={\BgBox}]{gather}
\text{定子電流} \vec{I_1} = \text{激磁電流} \vec{I_o} + \text{負載電流} \vec{I_L} \\
\text{激磁電流} \vec{I_o} = \text{鐵損電流} \vec{I_c} + \text{磁化電流} \vec{I_m} \\
\end{empheq}

\begin{empheq}[box={\BgBox}]{gather}
X_1 = 2 \pi f_1 L_1 \\
X_{2s} = 2 \pi f_2 L_2 \\
X_{2r} = 2 \pi (S f_1) L_2 = S X_{2s}
\end{empheq}

\begin{empheq}[box={\BgBox}]{gather}
\vec{Z_1} = R_1 + j X_1 \\
\vec{Z_{2r}} = R_2 + j X_{2r} = R_2 + S X_{2s}
\end{empheq}

\begin{empheq}[box={\BgBox}]{equation}
\vec{V_1} = \vec{E_1} + \vec{I_1} \vec{Z_1}
\end{empheq}

$\frac{1-S}{S} R_2$ 為等效機械負載電阻，所消耗功率代表轉子產生的內生機械功率 $P_m$ 

1. 當轉差率等於0時，等效機械負載電阻等於0
2. 當轉差率等於1時，等效機械負載電阻等於 $\infty$

## 轉矩分析

將電動機轉子電路移至左側，成為下圖

\begin{circuitikz}[longL/.style = {cute inductor, inductors/coils=9, inductors/width=1.2}]
	\ctikzset{resistors/scale=0.7}
	\draw (-1.1, 0)
	  to [short, o-*] (0, 0);
	\draw (0, 0)
	to [R=$R_1$] ++(2, 0)
	to [L=$X_1$, cute] ++(2, 0) coordinate (X)
	to [short, i={$I_{L1} = {I_2}' = \frac{I_2}{a}$}] ++(2, 0) ++(-2, -4)
	to [short] ++(6, 0)
	to [variable american resistor=$(\frac{1-S}{S}){R_2}'$] ++(0, 4)
	to [R=${R_2}'$] ++(-2, 0)
	to [L=${X_2}'$, cute] ++(-2, 0);
	\draw (X) ++(-4, 0)
	to [short, i=$I_o$] ++(0, -0.7) coordinate (Y)
	to [short, *-] ++(-0.6, 0)
	to [R=$G_c$, i=$I_c$] ++(0, -2.6)
	to [short] ++(0.6, 0)
	to [short, -*] ++(0, -0.7)
	to [short] ++(4, 0) to [short, -o] ++(-5.1, 0)
	to [open, v<=$V_1$] ++(0, 4);
	\ctikzset{inductors/coils=6}
	\ctikzset{inductors/width=0.8}
	\draw (Y)
	to [short] ++(0.6, 0)
	to [L=$B_m$, cute, i=$I_m$] ++(0, -2.6)
	to [short, -*] ++(-0.6, 0);
\end{circuitikz}

\begin{empheq}[box={\TitleBox[等效轉子電流]}]{equation}
{I_2}' = I_{L1} = \frac{V_1}{\sqrt{ (R_1 + \frac{{R_2}'}{S})^2 + (X_1 + X_2)^2 }}
\end{empheq}

\begin{empheq}[box={\TitleBox[電磁轉矩]}]{align}
T &= \frac{P_m}{{\omega}_r} \\
  &= \frac{(1-S)P_2}{(1-S){\omega}_s} \\
  &= \frac{P_2}{{\omega}_s} \\ 
  &= \frac{3}{{\omega}_s} {{I_2}'}^2 \frac{{R_2}'}{S} \\
  &= \frac{3}{{\omega}_s} \frac{{V_1}^2}{ (R_1 + \frac{{R_2}'}{S})^2 + (X_1 + {X_2}')^2 } \frac{{R_2}'}{S}
\end{empheq}

當電動機正常運轉時，轉差率S接近於0。若忽略 $R_1$ 、$X_1$、$X_2$，則

\begin{empheq}[box={\TitleBox[運轉中的電磁轉矩]}]{equation}
T \approx \frac{3}{{\omega}_s} \frac{{V_1}^2 S}{{R_2}'}
\end{empheq}

由此可知

1. 當電動機正常運轉時，電磁轉矩與外加電源的平方 ${V_1}^2$ 成正比，與等值轉子電阻 ${R_2}'$ 成反比
2. 當負載不變時，電磁轉矩也不變，轉差率S與轉子電阻 ${R_2}'$ 成正比

當電動機啟動時，轉差率S等於1，帶入電磁轉矩公式

\begin{empheq}[box={\TitleBox[起動轉矩]}]{equation}
T_s =  \frac{3}{{\omega}_s} \frac{{V_1}^2}{ (R_1 + {R_2}')^2 + (X_1 + {X_2}')^2 } \frac{{R_2}'}{S}
\end{empheq}

1. 啟動轉矩與外加電源但壓的平方 ${V_1}^2$ 成正比
2. 無論是在空載或有載的狀況啟動，啟動第流 $I_s$ 與啟動轉矩 $T_s$ 之值不變
3. 轉子繞組開路(${R_2}' = \infty$) 或轉子電阻 ${R_2}' = 0$ 時，起動轉矩等於0，轉子無法啟動
4. 可選擇適當的 ${R_2}'$ ，來獲得所需的起動轉矩

當負載增加時，轉矩也跟著增加，當超過電動機的最大轉矩時，電動機會無法負荷，此轉矩又稱為崩潰轉矩(Breakdown torque)、脫出轉矩(Pull-out torque)。由 $({I_2}')^2 \frac{{R_2}'}{S}$ 知道，依據最大功率轉移定理，最大轉矩發生在 $\frac{{R_2}'}{S}$ 等於 $\sqrt{{R_1}^2 + (X_1 + {X_2}')^2}$ 時，則發生最大轉矩的轉差率為

\begin{empheq}[box={\TitleBox[發生最大轉矩的轉差率]}]{equation}
S_{Tmax} = \frac{{R_2}'}{\sqrt{{R_1}^2 + (X_1 + {X_2}')^2}} \approx \frac{{R_2}'}{{X_2}'} = \frac{R_2}{X_2}
\end{empheq}

\begin{empheq}[box={\TitleBox[最大電磁轉矩]}]{equation}
T_s =  \frac{0.5 {V_1}^2}{R_1 + \sqrt{{R_1}^2 + (X_1 + {X_2}')^2}}
\end{empheq}

可知最大電磁轉矩與轉子電阻 ${R_2}$ 無關

## 三相感應電動機的啟動

* 繞線式

  於啟動時先將串街的可變電阻 $R'$ 調整至最大轉距處，再袋待轉子轉速逐漸增加，將可變電阻逐漸移除
* 鼠籠式
  1. 直接啟動/全壓啟動
  2. $Y - \Delta$ 降壓啟動: 可降低啟動電流成 $\frac{1}{3}$ 倍，但起動轉矩也是 $\frac{1}{3}$ 倍
  3. 補償器(自偶變壓器)降壓啟動
  4. 電抗(或電阻)降壓啟動
    \begin{empheq}[box={\TitleBox[降壓百分比]}]{equation}
    m = \frac{V_1(\text{電動機側電壓})}{V_2(\text{電源側電壓})} \%
    \end{empheq}

    \begin{empheq}[box={\TitleBox[啟動電流]}]{equation}
    {I_s}' = m \times I_s
    \end{empheq}

    \begin{empheq}[box={\TitleBox[啟動轉矩]}]{equation}
    {T_s}' = m^2 \times T_s
    \end{empheq}

## 三相感應電動機的速率控制

* 定子
  1. 改變電源電壓
  2. 改變電源頻率
  3. 改變磁極數(鼠籠式)
* 轉子
  1. 轉子外加電阻
  2. 轉子外加電抗
  3. 轉子外加電壓

