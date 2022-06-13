\documentclass[a4paper]{article}
\usepackage[a4paper,left=3cm,right=2cm,top=2.5cm,bottom=2.5cm]{geometry}
\usepackage{palatino}
\usepackage[colorlinks=true,linkcolor=blue,citecolor=blue]{hyperref}
\usepackage{graphicx}
\usepackage{cp2122t}
\usepackage{subcaption}
\usepackage{adjustbox}
\usepackage{color}

\definecolor{red}{RGB}{255,  0,  0}
\definecolor{blue}{RGB}{0,0,255}
\def\red{\color{red}}
\def\blue{\color{blue}}
%================= local x=====================================================%
\def\getGif#1{\includegraphics[width=0.3\textwidth]{cp2122t_media/#1.png}}
\let\uk=\emph
\def\aspas#1{``#1"}
%================= lhs2tex=====================================================%
%include polycode.fmt
%format (div (x)(y)) = x "\div " y
%format succ = "\succ "
%format ==> = "\Longrightarrow "
%format map = "\map "
%format length = "\length "
%format fst = "\p1"
%format p1  = "\p1"
%format snd = "\p2"
%format p2  = "\p2"
%format Left = "i_1"
%format Right = "i_2"
%format i1 = "i_1"
%format i2 = "i_2"
%format >< = "\times"
%format >|<  = "\bowtie "
%format |-> = "\mapsto"
%format . = "\comp "
%format .=?=. = "\mathbin{\stackrel{\mathrm{?}}{=}}"
%format (kcomp (f)(g)) = f "\kcomp " g
%format -|- = "+"
%format conc = "\mathsf{conc}"
%format summation = "{\sum}"
%format (either (a) (b)) = "\alt{" a "}{" b "}"
%format (frac (a) (b)) = "\frac{" a "}{" b "}"
%format (uncurry f) = "\uncurry{" f "}"
%format (const (f)) = "\underline{" f "}"
%format LTree3 = "\mathsf{LTree3}"
%format (lcbr (x)(y)) = "\begin{lcbr}" x "\\" y "\end{lcbr}"
%format (split (x) (y)) = "\conj{" x "}{" y "}"
%format (for (f) (i)) = "\for{" f "}\ {" i "}"
%format B_tree = "\mathsf{B}\mbox{-}\mathsf{tree} "
\def\ana#1{\mathopen{[\!(}#1\mathclose{)\!]}}
%format <$> = "\mathbin{\mathopen{\langle}\$\mathclose{\rangle}}"
%format Either a b = a "+" b
%format fmap = "\mathsf{fmap}"
%format NA   = "\textsc{na}"
%format NB   = "\textsc{nb}"
%format inT = "\mathsf{in}"
%format outT = "\mathsf{out}"
%format outLTree = "\mathsf{out}"
%format inLTree = "\mathsf{in}"
%format inFTree = "\mathsf{in}"
%format outFTree = "\mathsf{out}"
%format Null = "1"
%format (Prod (a) (b)) = a >< b
%format fF = "\fun F "
%format k1 = "k_1 "
%format k2 = "k_2 "
%format h1 = "h_1 "
%format h2 = "h_2 "
%format f1 = "f_1 "
%format f2 = "f_2 "
%format l1 = "l_1 "
%format d1 = "d_1 "
%format d2 = "d_2 "
%format d3 = "d_3 "
%format v3 = "v_3 "
%format g1 = "g_1 "
%format g2 = "g_2 "
%format map1 = "map_1 "
%format map2 = "map_2 "
%format map3 = "map_3"
%format l2 = "l_2 "
%format Dist = "\fun{Dist}"
%format IO = "\fun{IO}"
%format LTree = "{\LTree}"
%format FTree = "{\FTree}"
%format inNat = "\mathsf{in}"
%format (cata (f)) = "\cata{" f "}"
%format (cataNat (g)) = "\cataNat{" g "}"
%format (cataList (g)) = "\cataList{" g "}"
%format (anaList (g)) = "\anaList{" g "}"
%format Nat0 = "\N_0"
%format Rational = "\Q "
%format toRational = " to_\Q "
%format fromRational = " from_\Q "
%format muB = "\mu "
%format (frac (n)(m)) = "\frac{" n "}{" m "}"
%format (fac (n)) = "{" n "!}"
%format (underbrace (t) (p)) = "\underbrace{" t "}_{" p "}"
%format matrix = "matrix"
%%format (bin (n) (k)) = "\Big(\vcenter{\xymatrix@R=1pt{" n "\\" k "}}\Big)"
%format `ominus` = "\mathbin{\ominus}"
%%format % = "\mathbin{/}"
%format <-> = "{\,\leftrightarrow\,}"
%format <|> = "{\,\updownarrow\,}"
%format `minusNat`= "\mathbin{-}"
%format ==> = "\Rightarrow"
%format .==>. = "\Rightarrow"
%format .<==>. = "\Leftrightarrow"
%format .==. = "\equiv"
%format .<=. = "\leq"
%format .&&&. = "\wedge"
%format cdots = "\cdots "
%format pi = "\pi "
%format (curry (f)) = "\overline{" f "}"
%format (cataLTree (x)) = "\llparenthesis\, " x "\,\rrparenthesis"
%format (cataFTree (x)) = "\llparenthesis\, " x "\,\rrparenthesis"
%format (anaLTree (x)) = "\mathopen{[\!(}" x "\mathclose{)\!]}"
%format delta = "\Delta "
\newlabel{eq:fokkinga}{{3.93}{110}{The mutual-recursion law}{section.3.17}{}}
%format (plus (f)(g)) = "{" f "}\plus{" g "}"
%format ++ = "\mathbin{+\!\!\!+}"
%format Integer  = "\mathbb{Z}"
\def\plus{\mathbin{\dagger}}

%---------------------------------------------------------------------------

\title{
          Cálculo de Programas
\\
          Trabalho Prático
\\
          LCC --- 2021/22 (2º semestre)
}

\author{
          \dium
\\
          Universidade do Minho
}


\date\mydate

\makeindex
\newcommand{\rn}[1]{\textcolor{red}{#1}}
\begin{document}

\maketitle

\begin{center}\large
\begin{tabular}{ll}
\textbf{Grupo} nr. & 51 
\\\hline
a91640 & Beatriz Fernandes Oliveira
\\
a87973 & João Ricardo Rodrigues Nogueira
\\
a90416 & Miguel André Carvalho Gonçalves 
\end{tabular}
\end{center}

\section{Preâmbulo}

\CP\ tem como objectivo principal ensinar
a progra\-mação de computadores como uma disciplina científica. Para isso,
baseia-se num repertório de \emph{combinadores} que formam uma álgebra da
programação (conjunto de leis universais e seus corolários) e usa esses
combinadores para construir programas \emph{composicionalmente}, isto é,
agregando programas já existentes.

Na sequência pedagógica dos planos de estudo dos cursos que têm
esta disciplina, opta-se pela aplicação deste método à programação
em \Haskell\ (sem prejuízo da sua aplicação a outras linguagens
funcionais). Assim, o presente trabalho prático coloca os
alunos perante problemas concretos que deverão ser implementados em
\Haskell.  Há ainda um outro objectivo: o de ensinar a documentar
programas, a validá-los e a produzir textos técnico-científicos de
qualidade.

Antes de abodarem os problemas propostos no trabalho, os grupos devem ler
com atenção o anexo \ref{sec:documentacao} onde encontrarão as instruções
relativas ao sofware a instalar, etc.

%if False
\begin{code}
{-# OPTIONS_GHC -XNPlusKPatterns #-}
{-# LANGUAGE GeneralizedNewtypeDeriving, DeriveDataTypeable, FlexibleInstances #-}
module Main where
import Cp
import List hiding (fac)
import Nat hiding (aux)
import LTree
import FTree
import BTree
import Data.List hiding (find)
import Svg hiding (for)
import Control.Monad
import Control.Applicative hiding ((<|>))
import System.Process
import Data.Char
import Probability hiding (scale)
main = undefined
\end{code}
%endif

\Problema

O algorítmo da \emph{divisão Euclidiana},
\begin{code}
ed (n,0) = Nothing
ed (n,d+1) = (Just . p1) (aux d n)
\end{code}
dá erro quando o denominador |d| é zero, recorrendo à função auxiliar seguinte
nos outros casos, paramétrica em |d|: 
\begin{code}
aux d = split (q d) (split (r d) (c d))
\end{code}
Esta, por sua vez, é o emparelhamento das seguintes funções mutuamente recursivas,
\begin{code}
q d 0 = 0
q d (n+1) = q d n + (if x == 0 then 1 else 0) where x = c d n
r d 0 = 0
r d (n+1) = if x == 0 then 0 else 1 + r d n where x = c d n
c d 0 = d
c d (n+1) = if x == 0 then d else x-1 where x = c d n
\end{code}
onde |q| colabora na produção do quociente, |r| na produção do resto, e |c|
é uma função de controlo --- todas paramétricas no denominador |d|.

Mostre, por aplicação da lei de recursividade mútua, que |aux d| é a mesma
função que o ciclo-for seguinte:
\begin{code}
loop d = for ((g d)) ((0,(0, d))) where
     g d (q, (r, 0)) = (q+1, (0, d))
     g d (q, (r, c+1)) = (q,(r+1, c))
\end{code}
\textbf{Sugestão}: consultar o anexo \ref{sec:mr}.

\Problema

Considere o seguinte desafio, extraído de \href{http://bebras.dcc.fc.up.pt/problems/2020/problemas_09_10.pdf}{O Bebras - Castor Informático} (edição 2020):

\begin{quote}\em
\textbf{11 --- Robôs e Pedras Preciosas}
A Alice e o Bob estão a controlar um robô num labirinto com pedras preciosas.
O robô começa na localização indicada na figura abaixo [Fig.~\ref{fig:labirinto}].
O robô segue um caminho até encontrar uma bifurcação. Um dos jogadores decide
qual dos caminhos (esquerda ou direita) o robô deve tomar. Depois, o robô
segue esse caminho até encontrar outra bifurcação, e assim consecutivamente
(o robô nunca volta para trás no seu caminho).

A Alice e o Bob decidem à vez qual a direção a seguir, com a Alice a começar,
o Bob decidindo a 2ª bifurcação, a Alice a 3ª e por aí adiante. O jogo termina
quando o robô chegar ao final de um caminho sem saída, com o robô a recolher
todas as pedras preciosas que aí encontrar. A Alice quer que o robô acabe
o jogo com o maior número possível de pedras preciosas, enquanto que o Bob
quer que o robô acabe o jogo com o menor número possível de pedras preciosas.

A Alice e o Bob sabem que cada um vai tentar ser mais esperto que o outro.
Por isso se, por exemplo, o Bob redirecionar o robô para uma bifurcação onde
é possível recolher 3 ou 7 pedras preciosas, ele sabe que a Alice vai comandar
o robô escolhendo o caminho que leva às 7 pedras preciosas.
\end{quote}

O labirinto deste desafio (Fig.~\ref{fig:labirinto}) configura uma árvore
binária de tipo \LTree\ cujas folhas têm o número de pedras preciosas do
correspondente caminho:\footnote{Abstracção: as diferentes pedras preciosas
são irrelevantes, basta o seu número.}

\begin{code}
t = Fork (
       Fork (
            Fork (Leaf 2,Leaf 7),
            Fork (Leaf 5,Leaf 4)),
       Fork (
            Fork (Leaf 8,Leaf 6),
            Fork (Leaf 1,Leaf 3))
         )
\end{code}

\begin{enumerate}
\item	
Defina como catamorfismo de \LTree's a função |both :: LTree Int -> Int >< Int| tal que
\begin{quote}
|(a,b) = both t|
\end{quote}
dê,
\begin{itemize}
\item	em |a|: o resultado mais favorável à Alice, quando esta é a primeira a jogar,
	tendo em conta as jogadas do Bob e as suas;
\item	em |b|: o resultado mais favorável ao Bob, quando este é o primeiro a jogar,
	tendo em conta as jogadas da Alice e as suas.
\end{itemize}
\item
De seguida, extraia (por recursividade mútua) as funções (recursivas) |alice| e |bob| tais que
\begin{eqnarray*}
	|both = split alice bob|
\end{eqnarray*}
(Alternativamente, poderá codificar |alice| e |bob| em primeiro lugar e depois
juntá-las num catamorfismo recorrendo às leis da recursividade mútua.)
\end{enumerate}

\begin{figure}
	\centering
	\includegraphics[width=0.6\textwidth]{cp2122t_media/castor11.png}
\caption{
   Labirinto de ``Robôs e Pedras Preciosas".
   \label{fig:labirinto}
}
\end{figure}

\Problema

O \sierp{triângulo de Sierpinski} (Fig.~\ref{fig:sierp1}) é uma figura geométrica
\fractal\ em que um triângulo se subdivide recursivamente em sub-triângulos,
da seguinte forma: considere-se um triângulo rectângulo e
isósceles |A| cujos catetos têm comprimento |s|. A estrutura \fractal\ é
criada desenhando-se três triângulos no interior de |A|, todos eles
rectângulos e isósceles e com catetos de comprimento |div s 2|. Este passo
é depois repetido para cada um dos triângulos desenhados e assim
sucessivamente (Fig.~\ref{fig:sierp2}).

\begin{figure}[htb]
\begin{center}
	\includegraphics[width=0.4\textwidth]{cp2122t_media/sierpinski1.png}
\end{center}
  \caption{Um triângulo de Sierpinski com profundidade |4|.}
  \label{fig:sierp1}
\end{figure}

\begin{figure}[htb]
\begin{center}
	\includegraphics[width=0.6\textwidth]{cp2122t_media/sierpinski2.png}
\end{center}
  \caption{Construção de um triângulo de Sierpinski}
  \label{fig:sierp2}
\end{figure}

Um triângulo de Sierpinski é gerado repetindo-se infinitamente o processo
acima descrito; no entanto para efeitos de visualização é conveniente 
parar o processo recursivo a um determinado nível.

A figura a desenhar é constituída por triângulos todos da mesma dimensão
(por exemplo, no quarto triângulo da Fig.~\ref{fig:sierp2} desenharam-se
27 triângulos). Seja cada triângulo geometricamente descrito pelas coordenadas
do seu vértice inferior esquerdo e o comprimento dos seus catetos:
\begin{code}
type Tri = (Point, Side)
\end{code}
onde
\begin{code}
type Side = Int
type Point = (Int, Int)
\end{code}

A estrutura recursiva que suporta a criação de \sierp{triângulos de Sierpinski}
é captada por uma árvore ternária,
\begin{code}
data LTree3 a = Tri a | Nodo (LTree3 a) (LTree3 a) (LTree3 a) deriving (Eq,Show)
\end{code}
em cujas folhas se irão encontrar os triângulos mais pequenos, todos da
mesma dimensão, que deverão ser desenhados. Apenas estes conterão informação
de carácter geométrico, tendo os nós da árvore um papel exclusivamente estrutural.
Portanto, a informação geométrica guardada em cada folha consiste nas coordenadas
do vértice inferior esquerdo e no cateto do respectivo triângulo. A função
\begin{code}
sierpinski :: (Tri,Int) -> [Tri]
sierpinski = folhasSierp . geraSierp
\end{code}
recebe a informação do triângulo exterior e a profundidade pretendida,
que funciona como critério de paragem do processo de construção do fractal.
O seu resultado é a lista de triângulos a desenhar.

Esta função é um hilomorfismo do tipo |LTree3|, i.e.\ a composição de
duas funções: uma que gera |LTree3|s,
\begin{code}
geraSierp :: (Tri,Int) -> LTree3 Tri
geraSierp = anaLTree3 g2
\end{code}
e outra que as consome:
\begin{code}
folhasSierp :: LTree3 Tri -> [Tri]
folhasSierp = cataLTree3 g1
\end{code}
Trabalho a realizar:
\begin{enumerate}
\item Desenvolver a biblioteca \emph{pointfree} para o tipo |LTree3| de forma análoga
      a outras bibliotecas que conhece (\eg\ \BTree, \LTree, etc).
\item Definir os genes |g1| e |g2| do hilomorfismo |sierpinski|.
\item Correr
\begin{code}
teste = desenha (sierpinski (base,3))
\end{code}
para verificar a correcta geração de triângulos de Sierpinski em \svg\footnote{\svg,
abreviatura de \emph{Scalable Vector Graphics}, é um dialecto de \xml\ para
computação gráfica. A biblioteca Svg.hs (fornecida) faz uma interface rudimentar
entre \Haskell\ e \svg.}, onde |desenha| é uma função dada no anexo \ref{sec:codigo} que,
para o argumento |sierpinski (base,3)|, deverá produzir o triângulo colorido da 
Fig.~\ref{fig:sierp1}.\footnote{O resultado é gravado no ficheiro \verb+_.html+, que pode 
ser visualizado num browser. Poderão ser feitos testes com outros níveis de produndidade.}
\end{enumerate}

\Problema

Os computadores digitais baseiam-se na representação Booleana da informação,
isto é, sob a forma de \emph{bits} que podem ter dois valores, vulg.\ |0| e |1|.
Um problema muito frequente é o de os bits se alterarem, devido a ruído ao
nível electrónico. Essas alterações espúrias designam-se \emph{bit-flips}
e podem acontecer a qualquer nível: na transmissão de informação, na gravação
em disco, etc, etc.

Em contraste com essas perturbações, o utilizador de serviços informáticos
raramente dá pela sua presença. Porquê? Porque existe muito trabalho teórico
em correcção dos erros gerados por \emph{bit-flips}, que os permite esconder
do utilizador.

O objectivo desta questão é conseguirmos avaliar experimentalmente o funcionamento
de uma dessas técnicas de correcção de erros, a mais elementar de todas,
chamada \emph{código de repetição}, escrevendo tão pouco código (\Haskell)
quanto possível. Para isso vamos recorrer ao mónade das \emph{distribuições
probabilísticas} (detalhes no apêndice \ref{sec:probabilities}).

Vamos supor que queremos medir a eficácia de um tal código na situação seguinte:
queremos transmitir mensagens que constam exclusivamente de letras maiúsculas,
representadas por 5 bits cada uma segundo o esquema seguinte de codificação,
\begin{code}
enc :: Char -> Bin
enc c = tobin (ord c - ord 'A')
\end{code}
e descodificação,
\begin{code}
dec :: Bin -> Char
dec b = chr(frombin b + ord 'A')  
\end{code}
onde |tobin| e |frombin| são funções dadas no anexo \ref{sec:codigo}. Por exemplo,
\begin{quote}
|enc 'A' = [0,0,0,0,0]|
\\
|enc 'B' = [0,0,0,0,1]|
\\ $\vdots$ \\
|enc 'Z' = [1,1,0,0,1]|
\end{quote}
Embora |dec| e |enc| sejam inversas uma da outra, para o intervalo de |'A'|
a |'Z'|, deixam de o ser quando, a meio da transmissão, acontecem bit-flips: 

\begin{center}
\unitlength=0.08ex
\linethickness{0.1pt}
\begin{picture}(800.00,110.00)(-160,270)
\put(-170.00,310.00){|x|}
\put( 510.00,310.00){|y|$\not=$ |x|}
\put( 110.00,340.00){(bit-flips)}
\put(-100.00,270.00){\framebox(90,90)[cc]{|enc|}}
\put(350.00,270.00){\framebox(90,90)[cc]{|dec|}}
\put(-150.00,315.00){\vector(1,0){50.00}}
\put( -10.00,315.00){\vector(1,0){50.00}}
\multiput(100.00,315.00)(30,0){5}{.}
\put(300.00,315.00){\vector(1,0){50.00}}
\put(440.00,315.00){\vector(1,0){50.00}}
\end{picture}
\end{center}

Vejamos com quantificar "os estragos". Sabendo-se, por exemplo e por
observação estatística, que a probabilidade de um |0| virar |1| é de |4%|
e a de |1| virar |0| é de |10%|
\footnote{Estas probabilidades, na prática muito mais baixas, estão inflacionadas
para mais fácil observação.}, simula-se essa informação sobre a forma de
uma função probabilística, em Haskell:
\begin{code}
bflip :: Bit -> Dist Bit
bflip 0 = D[(0,0.96), (1,0.04)]
bflip 1 = D[(1,0.90), (0,0.10)]
\end{code}
Agora vamos simular o envio de caracteres. O que devia ser |transmit = dec . enc|
vai ter agora que prever a existência de possíveis bit-flips no meio
da transmissão:
\begin{code}
transmit = dec' . propagate bflip . enc
\end{code}
Por exemplo, |transmit 'H'| irá dar a seguinte distribuição:
\begin{quote}\small
\begin{verbatim}
 'H'  67.2%
 'D'   7.5%
 'F'   7.5%
 'G'   7.5%
 'P'   2.8%
 'X'   2.8%
 'E'   0.8%
 'B'   0.8%
 'C'   0.8%
 'L'   0.3%
 'N'   0.3%
 'O'   0.3%
 'T'   0.3%
 'V'   0.3%
 'W'   0.3%
 '`'   0.1%
 'A'   0.1%
\end{verbatim}
\end{quote}
A saída 'H', que se esperava com |100%| de certeza,
agora só ocorrerá, estatísticamente, com a probabilidade de |67.2%|,
consequência dos bit-flips, havendo um âmbito bastante
grande de respostas erradas, mas com probabilidades mais baixas.

\begin{enumerate}
\item \textbf{Trabalho a fazer:} completar a definição do catamorfismo de listas |propagate|.
\end{enumerate}

O que se pode fazer quanto a estes erros de transmissão? Os chamados códigos
de repetição enviam cada bit um número impar de vezes, tipicamente |3| vezes.
Cada um desses três bits (que na origem são todos iguais) está sujeito
a bit-flips. O que se faz é \emph{votar} no mais frequente --- ver função |v3| no anexo.
Se agora a transmissão do |'H'| for feita em triplicado,
usando
\begin{code}
transmit3 = dec' . propagate3 bflip3 . enc
\end{code}
ter-se-á:
\begin{quote}\small
\begin{verbatim}
Main> transmit3 'H'
 'H'  91.0%
 'F'   2.6%
 'G'   2.6%
 'D'   2.6%
 'P'   0.4%
 'X'   0.4%
 'B'   0.1%
 'C'   0.1%
 'E'   0.1%
\end{verbatim}
\end{quote}
Vê-se que a probabilidade da resposta certa aumentou muito, para |91%|,
com redução também do espectro de respostas erradas.

\begin{enumerate}
\setcounter{enumi}{1}
\item \textbf{Trabalho a fazer:} completar a definição do catamorfismo de
listas |propagate3| e da função |bflip3|.
\end{enumerate}

Apesar da sua eficácia, esta técnica de correcção de erros é dispendiosa,
obrigando o envio do triplo dos bits. Isso levou a
comunidade científica a encontrar formas mais sofisticadas para resolver
o mesmo problema sem tal ``overhead". Quem estiver interessado em saber mais
sobre este fascinante tópico poderá começar por visualizar este
\href{https://youtu.be/X8jsijhllIA?t=4}{vídeo} no YouTube.

\part*{Anexos}

\appendix

\section{Documentação para realizar o trabalho}
\label{sec:documentacao}
Para cumprir de forma integrada os objectivos do trabalho vamos recorrer
a uma técnica de programa\-ção dita ``\litp{literária}'' \cite{Kn92},
cujo princípio base é o seguinte:
%
\begin{quote}\em Um programa e a sua documentação devem coincidir.
\end{quote}
%
Por outras palavras, o código fonte e a documentação de um
programa deverão estar no mesmo ficheiro.

O ficheiro \texttt{cp2122t.pdf} que está a ler é já um exemplo de
\litp{programação literária}: foi gerado a partir do texto fonte
\texttt{cp2122t.lhs}\footnote{O sufixo `lhs' quer dizer
\emph{\lhaskell{literate Haskell}}.} que encontrará no
\MaterialPedagogico\ desta disciplina descompactando o ficheiro
\texttt{cp2122t.zip} e executando:
\begin{Verbatim}[fontsize=\small]
    $ lhs2TeX cp2122t.lhs > cp2122t.tex
    $ pdflatex cp2122t
\end{Verbatim}
em que \href{https://hackage.haskell.org/package/lhs2tex}{\texttt\LhsToTeX} é
um pre-processador que faz ``pretty printing''
de código Haskell em \Latex\ e que deve desde já instalar utilizando o
utiliário \href{https://www.haskell.org/cabal/}{cabal} disponível em \href{https://www.haskell.org}{haskell.org}.

Por outro lado, o mesmo ficheiro \texttt{cp2122t.lhs} é executável e contém
o ``kit'' básico, escrito em \Haskell, para realizar o trabalho. Basta executar
\begin{Verbatim}[fontsize=\small]
    $ ghci cp2122t.lhs
\end{Verbatim}

\noindent Abra o ficheiro \texttt{cp2122t.lhs} no seu editor de texto preferido
e verifique que assim é: todo o texto que se encontra dentro do ambiente
\begin{quote}\small\tt
\verb!\begin{code}!
\\ ... \\
\verb!\end{code}!
\end{quote}
é seleccionado pelo \GHCi\ para ser executado.

\subsection{Como realizar o trabalho}
Este trabalho teórico-prático deve ser realizado por grupos de 3 (ou 4) alunos.
Os detalhes da avaliação (datas para submissão do relatório e sua defesa
oral) são os que forem publicados na \cp{página da disciplina} na \emph{internet}.

Recomenda-se uma abordagem participativa dos membros do grupo em todos os
exercícios do trabalho, para assim poderem responder a qualquer questão colocada
na \emph{defesa oral} do relatório.

Em que consiste, então, o \emph{relatório} a que se refere o parágrafo anterior?
É a edição do texto que está a ser lido, preenchendo o anexo \ref{sec:resolucao}
com as respostas. O relatório deverá conter ainda a identificação dos membros
do grupo de trabalho, no local respectivo da folha de rosto.

Para gerar o PDF integral do relatório deve-se ainda correr os comando seguintes,
que actualizam a bibliografia (com \Bibtex) e o índice remissivo (com \Makeindex),
\begin{Verbatim}[fontsize=\small]
    $ bibtex cp2122t.aux
    $ makeindex cp2122t.idx
\end{Verbatim}
e recompilar o texto como acima se indicou.

No anexo \ref{sec:codigo} disponibiliza-se algum código \Haskell\ relativo
aos problemas que se seguem. Esse anexo deverá ser consultado e analisado
à medida que isso for necessário.

\subsection{Como exprimir cálculos e diagramas em LaTeX/lhs2tex}
Como primeiro exemplo, estudar o texto fonte deste trabalho para obter o
efeito:\footnote{Exemplos tirados de \cite{Ol18}.}
\begin{eqnarray*}
\start
     |id = split f g|
%
\just\equiv{ universal property }
%
        |lcbr(
          p1 . id = f
     )(
          p2 . id = g
     )|
%
\just\equiv{ identity }
%
        |lcbr(
          p1 = f
     )(
          p2 = g
     )|
\qed
\end{eqnarray*}

Os diagramas podem ser produzidos recorrendo à \emph{package} \LaTeX\
\href{https://ctan.org/pkg/xymatrix}{xymatrix}, por exemplo:
\begin{eqnarray*}
\xymatrix@@C=2cm{
    |Nat0|
           \ar[d]_-{|cataNat g|}
&
    |1 + Nat0|
           \ar[d]^{|id + (cataNat g)|}
           \ar[l]_-{|inNat|}
\\
     |B|
&
     |1 + B|
           \ar[l]^-{|g|}
}
\end{eqnarray*}

\section{Regra prática para a recursividade mútua em |Nat0|}\label{sec:mr}

Nesta disciplina estudou-se como fazer \pd{programação dinâmica} por cálculo,
recorrendo à lei de recursividade mútua.\footnote{Lei (\ref{eq:fokkinga})
em \cite{Ol18}, página \pageref{eq:fokkinga}.}

Para o caso de funções sobre os números naturais (|Nat0|, com functor
|fF X = 1 + X|) é fácil derivar-se da lei que foi estudada uma
	\emph{regra de algibeira}
	\label{pg:regra}
que se pode ensinar a programadores que não tenham estudado
\cp{Cálculo de Programas}. Apresenta-se de seguida essa regra, tomando como
exemplo o cálculo do ciclo-\textsf{for} que implementa a função de Fibonacci,
recordar o sistema:
\begin{spec}
fib 0 = 1
fib(n+1) = f n
f 0 = 1
f (n+1) = fib n + f n
\end{spec}
Obter-se-á de imediato
\begin{code}
fib' = p1 . for loop init where
   loop(fib,f)=(f,fib+f)
   init = (1,1)
\end{code}
usando as regras seguintes:
\begin{itemize}
\item	O corpo do ciclo |loop| terá tantos argumentos quanto o número de funções
mutuamente recursivas.
\item	Para as variáveis escolhem-se os próprios nomes das funções, pela ordem
que se achar conveniente.\footnote{Podem obviamente usar-se outros símbolos,
mas numa primeira leitura dá jeito usarem-se tais nomes.}
\item	Para os resultados vão-se buscar as expressões respectivas, retirando
a variável |n|.
\item	Em |init| coleccionam-se os resultados dos casos de base das funções,
pela mesma ordem.
\end{itemize}
Mais um exemplo, envolvendo polinómios do segundo grau $ax^2 + b x + c$ em |Nat0|.
Seguindo o método estudado nas aulas\footnote{Secção 3.17 de \cite{Ol18} e tópico
\href{https://www4.di.uminho.pt/~jno/media/cp/}{Recursividade mútua}
nos vídeos de apoio às aulas teóricas.},
de $f\ x = a x^2 + b x + c$ derivam-se duas funções mutuamente recursivas:
\begin{spec}
f 0 = c
f (n+1) = f n + k n
k 0 = a + b
k(n+1) = k n + 2 a
\end{spec}
Seguindo a regra acima, calcula-se de imediato a seguinte implementação, em Haskell:
\begin{code}
f' a b c = p1 . for loop init where
  loop(f,k) = (f+k,k+2*a)
  init = (c,a+b) 
\end{code}

\section{O mónade das distribuições probabilísticas} \label{sec:probabilities}
%format B = "\mathit B"
%format C = "\mathit C"
Mónades são functores com propriedades adicionais que nos permitem obter
efeitos especiais em progra\-mação. Por exemplo, a biblioteca \Probability\
oferece um mónade para abordar problemas de probabilidades. Nesta biblioteca,
o conceito de distribuição estatística é captado pelo tipo
\begin{eqnarray}
	|newtype Dist a = D {unD :: [(a, ProbRep)]}|
	\label{eq:Dist}
\end{eqnarray}
em que |ProbRep| é um real de |0| a |1|, equivalente a uma escala de $0$ a
$100 \%$.

Cada par |(a,p)| numa distribuição |d::Dist a| indica que a probabilidade
de |a| é |p|, devendo ser garantida a propriedade de  que todas as probabilidades
de |d| somam $100\%$.
Por exemplo, a seguinte distribuição de classificações por escalões de $A$ a $E$,
\[
\begin{array}{ll}
A & \rule{2mm}{3pt}\ 2\%\\
B & \rule{12mm}{3pt}\ 12\%\\
C & \rule{29mm}{3pt}\ 29\%\\
D & \rule{35mm}{3pt}\ 35\%\\
E & \rule{22mm}{3pt}\ 22\%\\
\end{array}
\]
será representada pela distribuição
\begin{code}
d1 :: Dist Char
d1 = D [('A',0.02),('B',0.12),('C',0.29),('D',0.35),('E',0.22)]
\end{code}
que o \GHCi\ mostrará assim:
\begin{Verbatim}[fontsize=\small]
'D'  35.0%
'C'  29.0%
'E'  22.0%
'B'  12.0%
'A'   2.0%
\end{Verbatim}
É possível definir geradores de distribuições, por exemplo distribuições \emph{uniformes},
\begin{code}
d2 = uniform (words "Uma frase de cinco palavras")
\end{code}
isto é
\begin{Verbatim}[fontsize=\small]
     "Uma"  20.0%
   "cinco"  20.0%
      "de"  20.0%
   "frase"  20.0%
"palavras"  20.0%
\end{Verbatim}
distribuição \emph{normais}, eg.\
\begin{code}
d3 = normal [10..20]
\end{code}
etc.\footnote{Para mais detalhes ver o código fonte de \Probability, que é uma adaptação da
biblioteca \PFP\ (``Probabilistic Functional Programming''). Para quem quiser saber mais
recomenda-se a leitura do artigo \cite{EK06}.} |Dist| forma um \textbf{mónade}
cuja unidade é |return a = D [(a,1)]| e cuja composição de Kleisli é (simplificando a notação)
\begin{spec}
  ((kcomp f g)) a = [(y,q*p) | (x,p) <- g a, (y,q) <- f x]
\end{spec}
em que |g: A -> Dist B| e |f: B -> Dist C| são funções \textbf{monádicas} que representam
\emph{computações probabilísticas}.

Este mónade é adequado à resolução de problemas de \emph{probabilidades e
estatística} usando programação funcional, de forma elegante e como caso
particular da programação monádica.

\section{Código fornecido}\label{sec:codigo}

\subsection*{Problema 3}

Triângulo de base:
\begin{code}
base = ((0,0), 32)
\end{code}
Desenho de triângulos em \svg:
\begin{code}
desenha x = picd'' [ scale 0.44 (0,0) (x >>= tri2svg) ]
\end{code}
Função que representa cada triângulo em \svg:
\begin{code}
tri2svg :: Tri -> Svg
tri2svg (p,c) = (red . polyg) [ p, p .+ (0,c), p .+ (c,0) ]
\end{code}
\textbf{NB}: o  tipo |Svg| é sinónimo de |String|:
\begin{code}
type Svg = String
\end{code}

\subsection*{Problema 4}
Funções básicas:
\begin{code}
type Bit = Int
type Bin = [Bit]
type Bit3 = (Bit,Bit,Bit)
tobin = rtrim 5 . pad 5 . dec2bin
frombin = bin2dec . rtrim 5
bin2dec :: Bin -> Int
bin2dec [a] = a
bin2dec b   = bin2dec(init b) * 2 + last b
rtrim n a = drop (length a - n) a
dec2bin 0 = []
dec2bin n = dec2bin m ++ [b] where (m,b) = (div n 2, mod n 2)
pad n x = take m zeros ++ x where
   m = n-length x
   zeros = 0:zeros
bflips = propagate bflip
\end{code}
Função que vota no bit mais frequente:
\begin{code}
v3 (0,0,0) = 0
v3 (0,0,1) = 0
v3 (0,1,0) = 0
v3 (0,1,1) = 1
v3 (1,0,0) = 0
v3 (1,0,1) = 1
v3 (1,1,0) = 1
v3 (1,1,1) = 1
\end{code}
Descodificação monádica:
\begin{code}
dec' = fmap dec
\end{code}
Para visualização abreviada de distribuições:
\begin{code}
consolidate :: Eq a => Dist a -> Dist a
consolidate = D . filter q . map (id><sum) . collect . unD where q(a,p) = p > 0.001
collect x = nub [ k |-> nub [ d' | (k',d') <- x , k'==k ] | (k,d) <- x ]
\end{code}

%----------------- Soluções dos alunos -----------------------------------------%

\section{Soluções dos alunos}\label{sec:resolucao}
\subsection*{Problema 1} \label{pg:P1}

\paragraph{}
Para resolver este problema, é necessário definir-mos as funções dadas no enunciado em pointfree.
Comecemos, então, pela função q d.

\begin{eqnarray*}
     \start
            |lcbr(
                 (q d) 0 = 0
          )(
              (q d) n+1 = (q d) n + (if x == 0 then 1 else 0) where x = (c d) n
          )|
     %
     \just\equiv{Def succ dada nas aulas}
     %
             |lcbr(
                  (q d) 0 = 0
          )(
               (q d) (succ n) =  (q d) n + if (c d) n == 0 then 1 else 0
          )|
     %
     \just\equiv{Def-const (74), $\forall \ x \  (c \ d) \ x |==| 0 \  \equiv \  \forall \ x \ (c \ d) \ x \ (|==| 0) \  \equiv \ \forall \ x \ (0 |==|) \ . \ (c \ d) \ x \ \equiv \ \forall \ x \ ((0 |==|) \ . \ (c \ d))$}
     %
             |lcbr(
                  (q d) ( (const(0)) n) = const(0) n
          )(
               (q d) (succ n) =  (q d) n + if (((0 ==) . (c d))) n then const(1) n else const(0) n 
          )|
     %
     \just\equiv{Def-comp (72), Def-cond (78)}
     %
             |lcbr(
                  (q d) . const(0) n = const(0) n 
          )(
               ((q d).succ) n =  (q d) n + ((0 ==) . (cd) ==> const(1), const(0)) n 
          )|
     %
     \just\equiv{Uncurry (84)}
     %
             |lcbr(
                  (q d) . (const 0) n = (const 0) n 
          )(
               ((q d) . succ ) n  = uncurry (+) ((q d) n , ((0 ==) . (cd) ==> const(1), const(0)) n ) 
          )|
     %
     \just\equiv{Def-split (76)}
     %
             |lcbr(
                  (q d) . (const 0) n = (const 0) n 
          )(
               ((q d) . succ) n  = uncurry (+)  . (split (q d) ((0 ==) . (cd) ==> const(1), const(0)))  n
          )|
     %
     \just\equiv{Igualdade extensional (71)}
     %
             |lcbr(
                  (q d) . (const 0) = (const 0)
          )(
               (q d) . succ = uncurry(+) . (split (q d) ((0 ==) . (cd) ==> const(1), const(0))) 
          )|
     %
     \just\equiv{Def condicional de McCarthy (30)}
     %
               |lcbr(
                    (q d) . (const 0) = (const 0) 
              )(
                  (q d) . succ = uncurry(+) . (split (q d) ((either (const 1) (const 0)) . ((0 ==) . (cd)) ?)) 
              )|
     %
     \just\equiv{Eq - + (27)}
     %
               | (either ((q d) . const(0)) ( (q d) . succ) ) = (either (const 0) (uncurry(+) . (split (q d) ((either (const 1) (const 0)) . ((0 ==) . (cd)) ?)) ))|
     %
     \just\equiv{Fusão - + (20)}
     %
               | (q d) . (either (const(0)) (succ)) = (either (0) (uncurry(+) . (split (q d) ((either (const 1) (const 0)) . ((0 ==) . (cd)) ?)) ))|
     %
     \qed
\end{eqnarray*}

Procederemos à obtenção de uma definição alternativa da função (r d).
\begin{eqnarray*}
     \start
                 |lcbr(
                    (r d) 0 = 0
               )(
                   (r d) (n+1) = if x == 0 then 0 else 1 + (r d) n where x = (c d) n
               )|
     %
     \just\equiv{Def succ dada nas aulas}
     %
                  |lcbr(
                       (r d) 0 = 0
               )(
                    (r d) (succ n) = if (c d) n == 0 then 0 else 1 + (r d) n
               )|
     %
     \just\equiv{Def-const (74), $\forall \ x \  (c \ d) \ x |==| 0 \  \equiv \  \forall \ x \ (c \ d) \ x \ (|==| 0) \  \equiv \ \forall \ x \ (0 |==|) \ . \ (c \ d) \ x \ \equiv \ \forall \ x \ ((0 |==|) \ . \ (c \ d))$}
     %
                  |lcbr(
                       (r d) ((const(0)) n) = (const(0)) n
               )(
                    (r d) (succ n) =  if ((0 ==) . (c d)) n then const (0) n else const (1) n + (r d) n 
               )|
     %
     \just\equiv{Uncurry (84), Def-comp (72)}
     %
               |lcbr(
                    (r d) . const(0) n = const(0) n
               )(
                    ((r d) . succ) n =  if ((0 ==) . (c d)) n then const (0) n else uncurry(+) (const(1) n, (r d) n)
               )|
     %
     \just\equiv{Def-split (76)}
     %
               |lcbr(
                    (r d) . const(0) n = const(0) n
               )(
                    ((r d) . succ) n =  if ((0 ==) . (c d)) n then const (0) n else uncurry(+) . (split (const (1)) (r d)) n
               )|
     %
     \just\equiv{Def-cond (78)}
     %
               |lcbr(
                    (r d) . const(0) n = const(0) n
               )(
                    ((r d) . succ) n  = (((0 ==) . (c d)) ==> const (0), uncurry(+) . (split (const (1)) (r d)) ) n
               )|
     %
     \just\equiv{Igualdade extensional (71)}
     %
               |lcbr(
                    (r d) . const(0) = const(0) 
               )(
                    (r d) . succ = (((0 ==) . (c d))  ==>  const (0), uncurry(+) . (split (const (1)) (r d)) ) 
               )|
     %
     \just\equiv{Def condicional de McCarthy (30)}
     %
               |lcbr(
                    (r d) . const(0) = (const 0)
              )(
                  (r d) . succ = (either (const 0) (uncurry(+) . (split (const (1)) (r d)) )) . ((0 ==) . (c d)) ?
              )|
     %
     \just\equiv{Eq - + (27)}
     %
              | (either ((r d) . const(0)) ( (r d) . succ) ) = (either (const 0) ((either (const 0) (uncurry(+) . (split (const (1)) (r d)) )) . ((0 ==) . (c d)) ?))|
     %
     \just\equiv{Fusão - + (20)}
     %
               | (r d) . (either (const(0)) (succ)) = (either (const 0) ((either (const 0) (uncurry(+) . (split (const (1)) (r d)) )) . ((0 ==) . (c d)) ?))|
     %
     \qed
\end{eqnarray*}

Finalmente, aplicaremos o mesmo processo para a função (c d).

\begin{eqnarray*}
     \start
               |lcbr(
                    (c d) 0 = d
               )(
                    (c d) (n+1) = if x == 0 then d else x-1 where x = (c d) n
               )|
     %
     \just\equiv{Def succ dada nas aulas}
     %
               |lcbr(
                      (c d) 0 = d
               )(
                    (c d) (succ n) = if (c d) n == 0 then d else (c d) n - 1
               )|
     %
     \just\equiv{Def-const (74), $\forall \ x \  (c \ d) \ x |==| 0 \  \equiv \  \forall \ x \ (c \ d) \ x \ (|==| 0) \  \equiv \ \forall \ x \ (0 |==|) \ . \ (c \ d) \ x \ \equiv \ \forall \ x \ ((0 |==|) \ . \ (c \ d))$ }
     %
               |lcbr(
                    (c d) ((const (0)) n) = const(d) n
               )(
                    (c d) (succ n) =  if ((0 ==) . (c d)) n then const(d) n else (c d) n - ((const(1)) n)
               )|
     %
     \just\equiv{Uncurry (84), Def-comp (72)}
     %
               |lcbr(
                    (c d) . const(0) n = const(d) n
               )(
                    ((c d) . succ) n =  if ((0 ==) . (c d)) n then const(d) n else uncurry(-) ((c d) n, const(1) n)
               )|
     %
     \just\equiv{Def-split (76)}
     %
               |lcbr(
                    (c d) . const(0) n = const(d) n
               )(
                    ((c d) . succ) n =  if ((0 ==) . (c d)) n then const (d) n else uncurry(-) . (split ((c d)) (const(1))) n
               )|
     %
     \just\equiv{Def-cond (78)}
     %
               |lcbr(
                    (c d) . const(0) n = const(d) n
               )(
                    ((r d) . succ) n  = (((0 ==) . (c d)) ==> const (d), uncurry(-) . (split ((c d)) (const(1)) )) n
               )|
     %
     \just\equiv{Igualdade extensional (71)}
     %
               |lcbr(
                    (c d) . const(0) = const(d) 
               )(
                    (c d) . succ = (((0 ==) . (c d))  ==>  const (d), uncurry(-) . (split ((c d)) (const(1))) ) 
               )|
     %
     \just\equiv{Def condicional de McCarthy (30)}
     %
               |lcbr(
                    (c d) . const(0) = (const d)
              )(
                  (c d) . succ = (either (const d) (uncurry(-) . (split ((c d)) (const(1))) )) . ((0 ==) . (c d)) ?
              )|
     %
     \just\equiv{Eq - + (27)}
     %
               | (either ((c d) . const(0)) ( (c d) . succ) ) = (either (const d) ((either (const d) (uncurry(-) . (split ((c d)) (const(1))) )) . ((0 ==) . (c d)) ?))|
     %
     \just\equiv{Fusão - + (20)}
     %
                | (c d) . (either (const(0)) (succ)) = (either (const d) ((either (const d) (uncurry(-) . (split ((c d)) (const(1))) )) . ((0 ==) . (c d)) ?))|
     %
     \qed
\end{eqnarray*}

%format (cases3 (x)(y)(z)) = "\begin{lcbr}" x "\\" y "\\" z "\end{lcbr}"
%format (cases4 (x)(y)(z)(w)) = "\begin{lcbr}" x "\\" y "\\" z "\\" w "\end{lcbr}"
%format l2 = "l_2 "

Por aplicação da lei de recursividade mútua em aux temos: 
\begin{eqnarray*}
     \start
     %
     \just\equiv{Fokkinga (52)}
     %
               |cases3(
                    (q d) . in = h . F (split (q d) (split (r d) (c d)))
              )(
                    (r d) . in = k . F (split (q d) (split (r d) (c d)))
              )( 
                    (c d) . in = l . F (split (q d) (split (r d) (c d)))
              )|
     %
     \just\equiv{Def in, |F (split ((q d)) (split ((r d)) ((c d))))|}
     %
               |cases3(
                    (q d) . (either (const 0) (succ))  = h . (id + (split (q d) (split (r d) (c d))))
              )(
                    (r d) . (either (const 0) (succ))  = k . (id + (split (q d) (split (r d) (c d))))
              )(
                    (c d) . (either (const 0) (succ))  = l . (id + (split (q d) (split (r d) (c d))))
              )|
     %
     \just\equiv{Fusão-+ (20), como o |F (split ((q d)) (split ((r d)) ((c d))))| mapeia para uma soma, temos que h, k e l são eithers.}
     %
               |cases3(
                    (either ((q d) . (const 0)) ((q d) . succ)) = (either (h1) (h2)) . (id + (split ((q d)) (split ((r d)) ((c d)))))
              )(
                    (either ((r d) . (const 0)) ((r d) . succ))  = (either (k1) (k2)) . (id + (split ((q d)) (split ((r d)) ((c d)))))
              )(
                    (either ((c d) . (const 0)) ((c d) . succ))  = (either (l1) (l2)) . (id + (split ((q d)) (split ((r d)) ((c d))))) 
              )|
     %
     \just\equiv{Absorção-+ (22), Natural-id (1)}
     %
               |cases3(
                    (either ((q d) . (const 0)) ((q d) . succ))  = (either (h1) (h2 . (split ((q d)) (split ((r d)) ((c d))))) )
              )(
                    (either ((r d) . (const 0)) ((r d) . succ))  = (either (k1) (k2 . (split ((q d)) (split ((r d)) ((c d))))) ) 
              )(
                    (either ((c d) . (const 0)) ((c d) . succ))  = (either (l1) (l2 . (split ((q d)) (split ((r d)) ((c d))))) )
              )|
     %
     \qed
\end{eqnarray*}

Consideremos apenas um ramo do sistema de cada vez, com o intuito de facilitar a resolução da questão. Assim sendo, no primeiro ramo temos que: 
\begin{eqnarray*}
     \start
          |(either ((q d) . (const 0)) ((q d) . succ))  = (either (h1) (h2 . (split ((q d)) (split ((r d)) ((c d))))) )|
     %
     \just\equiv{Eq - + (27)}
     %
               |lcbr(
                    (q d) . (const 0) = h1 
              )(
                    (q d) . succ =  h2 . (split (q d) (split (r d) (c d)))
              )|
     %
     \just\equiv{Como foi provado em cima, |(q d) .(const 0) = (const 0)|, Igualdade extensional (71), Def-comp (72), Def-split (76)}
     %
               |lcbr(
                    (const 0) = h1 
              )(
                    (q d) (succ x) = h2 (q d x, (r d x, c d x))
              )|
     %
     \just\equiv{Como foi provado em cima, |(q d) . succ = uncurry(+) . ( split (q d) ((either (const 1) (const 0)) . ((0 ==) . (cd)) ?) )|}   
     %  
          |lcbr(
               (const 0) = h1 
          )(
               uncurry(+) . (split (q d) ( (either (const 1) (const 0)) . ((0 ==) . (cd)) ? ) ) = h2 (q d x, (r d x, c d x))
          )|
     %
     \just\equiv{Eq - + (27), Fusao - + (20)}
     %
          | h . (either(const 0) (succ)) = (either (const 0) (uncurry(+) . (split (q d) ( (either (const 1) (const 0)) . ((0 ==) . (cd)) ? ) )))|
     %
     \qed
\end{eqnarray*}

Para o segundo ramo temos que:

\begin{eqnarray*}
     \start
          |(either ((r d) . (const 0)) ((r d) . succ))  = (either (k1) (k2 . (split ((q d)) (split ((r d)) ((c d))))) )|
     %
     \just\equiv{Eq - +(27)}
     %
               |lcbr(
                    (r d) . (const 0) = k1 
              )(
                    (r d) . succ =  k2 . (split (q d) (split (r d) (c d)))
              )|
     %
     \just\equiv{Como foi provado em cima, |(r d) .(const 0) = (const 0)|, Igualdade extensional (71), Def-comp (72), Def-split (76)}
     %
               |lcbr(
                    (const 0) = k1 
              )(
                    (r d) (succ x) = k2 (q d x, (r d x, c d x))
              )|
     %
     \just\equiv{Como foi provado em cima, |(r d) . succ = (either (const 0) (uncurry(+) . (split (const (1)) (r d)) )) . ((0 ==) . (c d)) ?|}   
     %  
          |lcbr(
               (const 0) = k1 
          )(
               (either (const 0) (uncurry(+) . (split (const 1) (r d)) )) . ((0 ==) . (c d)) ? = k2 (q d x, (r d x, c d x))
          )|
     %
     \just\equiv{Eq - + (27), Fusao - + (20)}
     %
          | k . (either(const 0) (succ)) = (either (const 0) ((either (const 0) (uncurry(+) . (split (const 1) (r d)) )) . ((0 ==) . (c d)) ?))|
     %
     \qed
\end{eqnarray*}

Finalmente, para o terceiro ramo: 

\begin{eqnarray*}
     \start
          |(either ((c d) . (const 0)) ((c d) . succ))  = (either (l1) (l2 . (split ((q d)) (split ((r d)) ((c d))))) )|
     %
     \just\equiv{Eq - + (27)}
     %
               |lcbr(
                    (c d) . (const 0) = l1 
              )(
                    (c d) . succ =   l2 . (split (q d) (split (r d) (c d)))
              )|
     %
     \just\equiv{Como foi provado em cima, |(c d) .(const 0) = (const d)|, Igualdade extensional (71), Def-comp (72), Def-split (76)}
     %
               |lcbr(
                    (const d) = l1 
              )(
                    (r d) (succ x) = l2 (q d x, (r d x, c d x))
              )|
     %
     \just\equiv{Como foi provado em cima, |(c d) . succ = (either (const d) (uncurry(-) . (split ((c d)) (const(1))) )) . ((0 ==) . (c d)) ?|}   
     %  
          |lcbr(
              (const d) = l1 
          )(
               (either (const d) (uncurry(-) . (split ((c d)) (const 1)) )) . ((0 ==) . (c d)) ? = l2 (q d x, (r d x, c d x))
          )|
     %
     \just\equiv{Eq - + (27),Fusao - + (20)}
     %
          | l . (either(const 0) (succ)) = either (const d) (either (const d) (uncurry(-) . (split ((c d)) (const 1))) ) . ((0 ==) . (c d)) ?|
     %
     \qed
\end{eqnarray*}

Logo, 
\begin{eqnarray*}
     \start
     \just\equiv{Fokkinga (52)}
     %
          | (split ((q d)) (split ((r d)) ((c d)))) = cata (split (h) (split (k) (l)))| 
     %
     \just\equiv{Lei da troca (28)}
     %
          | (split ((q d)) (split ((r d)) ((c d)))) = cata (split (h) (either (split (const 0) (const d)) (split (k2) (l2))))| 
     %
     \just\equiv{Lei da troca (28)}
     %
          |(split ((q d)) (split ((r d)) ((c d)))) = cata (either (split (const 0) (split (const 0) (const d))) (split (h2) (split (k2) (l2)))) |
     %
     \just\equiv{for b i = | cata (either (const i) (b))|}
     %
          |(split ((q d)) (split ((r d)) ((c d)))) = for ((h2 d, (k2 d,l2 d))) ((0,(0,d))) |
     %
\end{eqnarray*}
\paragraph{}
Observando a linha anterior podemos concluir que | aux d = for ((h2 d, (k2 d,l2 d))) ((0,(0,d))) |. Com o intuito de obter uma definição mais completa deste ciclo-for continuemos esta prova, assim sendo obtemos:
\begin{verbatim}
<(q d),<(r d),(c d)>> = for (g d) (0,(0,d)) where 
          (g d)(q,(r,c)) = (h2 d (q,(r,c)) , (k2 d (q,(r,d)),l2 d (q,(r,c))))
\end{verbatim}               
                    

Podemos verificar que vão existir dois casos, para valores de c = 0 e para c |>| 0. Ora, para o primeiro caso, sabemos que:

\begin{itemize}
     \item |h2 d (q, (r, 0)) = q + 1;|
     \item | k2 d (q, (r, 0)) = 0;|
     \item | l2 d (q, (r, 0)) = d|.
\end{itemize}


Já para o segundo caso, temos que:

\begin{itemize}
     \item |h2 d (q, (r, c)) = q + 1;|
     \item |k2 d (q, (r, c)) = r + 1;|
     \item |l2 d (q, (r, c)) = c|.
\end{itemize}


O que nos leva à seguinte definição:
\begin{verbatim}
     <(q d),<(r d),(c d)>> = for (g d) (0,(0,d)) where 
              (g d) (q,(r,0)) = (q+1, (0,d))
              (g d) (q,(r,c+1)) = (q, (r+1,c))
     \end{verbatim}    

\subsection*{Problema 2}

\begin{eqnarray*}
     \xymatrix@@C=1cm@@R=2cm{
         |Ltree Int|
         \ar[d]_{|cataLTree g|}\ar@@/^1.5pc/[rr]^(0.5){out} 
     & 
          \cong
     &
         |Int + Ltree Int >< Ltree Int|
                \ar[d]^{|id + g >< g|}
                \ar@@/^1.5pc/[ll]^(0.5){in}
     \\
          |Int >< Int| && |Int + Int >< Int| 
                \ar[ll]^{ g  = |(either (g11) (g12))|}
     }
\end{eqnarray*}
Assim sendo, pelo diagrama anterior podemos retirar a seguinte definição de g.
\begin{code}
both = cataLTree g
g = either g11 g12
g11 x = (x,x)
g12 ((a,b),(c,d)) = (a+c,b+d)
\end{code}

\paragraph{}
Para obtermos a definição das funções alice e bob, é necessário resolvermos a equação |(cata (g)) = (split (alice) (bob))| aplicando a lei da Recursividade Mútua. No entanto, primeiramente, é necessário transformar a nossa definição de g num split. Ora, 
\begin{eqnarray*}
     \start
          |g|
     %
     \just\equiv{Natural - id (1)}
     %
          |id . g|
     %
     \just\equiv{Reflexão - |><| (8)}
     %
          |(split (p1) (p2)) . g|
     %
     \just\equiv{Fusão - |><| (9)}
     %
          |(split (p1 . g) (p2 . g))|
     %
\end{eqnarray*}

Assim sendo,
\begin{eqnarray*}
     \start
            |(cata (g)) = (split (alice) (bob))|
     %
     \just\equiv{Fokkinga (52)}
     %
          |lcbr(
               alice . in = (p1 . g) . F (split (alice) (bob)) 
          )(
               bob . in = (p2 . g) . F (split (alice) (bob)) 
          )|
     %
     \just\equiv{Base - Cata (49)}
     %
          |lcbr(
               alice . in = (p1 . g) . B (id, (split (alice) (bob)))
          )(
               bob . in = (p2 . g) .  B (id, (split (alice) (bob)))
          )|
     %
     \just\equiv{|B (id, (split (alice) (bob)))  = id + (split (alice) (bob)) >< (split (alice) (bob))|}
     %
          |lcbr(
               alice . in  = (p1 . g) . (id + (split (alice) (bob)) ><  (split (alice) (bob)))
          )(
               bob . in = (p2 . g) . (id + (split (alice) (bob)) >< (split (alice) (bob)))
          )|
     %
     \just\equiv{Def - + (21), Natural - id (1)}
     %
          |lcbr(
               alice . in  = (p1 . g) . (either (i1) (i2 . ((split (alice) (bob)) >< (split (alice) (bob)))))
          )(
               bob . in = (p2 . g) . (either (i1) (i2 . ((split (alice) (bob)) ><  (split (alice) (bob)))))
          )|
     %
     \just\equiv{Fusão - + (20)}
     %
          |lcbr(
               alice . in = (either ((p1 . g) . i1) ((p1 . g) . (i2 . ((split (alice) (bob)) >< (split (alice) (bob))))))
          )(
               bob . in = (either ((p2 . g) . i1) ((p2 . g) . (i2 . ((split (alice) (bob)) ><  (split (alice) (bob))))))
          )|
     %
     \just\equiv{ Assoc - comp (2), Definição do in}
     %
          |lcbr(
               alice . [Leaf, Fork]= (either (p1 . (g . i1)) ((p1 . g) . (i2 . ((split (alice) (bob)) >< (split (alice) (bob))))))
          )(
               bob . [Leaf, Fork] = (either (p2 . (g . i1)) ((p2 . g) . (i2 . ((split (alice) (bob)) ><  (split (alice) (bob))))))
          )|
     %
     \just\equiv{ Universal - + (17)}
     %
          |lcbr(
               lcbr(
                    alice .  [Leaf, Fork] . i1  = p1 . (g . i1) 
               )(
                    alice .  [Leaf, Fork] . i2  = (p1 . g) . (i2 . ((split (alice) (bob)) >< (split (alice) (bob))))
               )
          )(
               lcbr(
                    bob  .  [Leaf, Fork] . i1 = p2 . (g . i1) 
               )(
                    bob  .  [Leaf, Fork] . i2 = (p2 . g) . (i2 . ((split (alice) (bob)) ><  (split (alice) (bob))))
               )
          )|
     %
     \just\equiv{ Assoc - comp (2), Cancelamento - + (18)}
     %
          |lcbr(
               lcbr(
                    alice . Leaf  = p1 . (g . i1) 
               )(
                    alice . Fork  = p1 . (g . (i2 . ((split (alice) (bob)) >< (split (alice) (bob)))))
               )
          )(
               lcbr(
                    bob  . Leaf = p2 . (g . i1) 
               )(
                    bob  . Fork = p2 . (g . (i2 . ((split (alice) (bob)) ><  (split (alice) (bob)))))
               )
          )|
     %
     \just\equiv{ Assoc - comp (2)}
     %
          |lcbr(
               lcbr(
                    alice . Leaf   = p1 . (g . i1) 
               )(
                    alice . Fork  = p1 . ((g . i2) . ((split (alice) (bob)) >< (split (alice) (bob))))
               )
          )(
               lcbr(
                    bob  . Leaf  = p2 . (g . i1) 
               )(
                    bob  . Fork = p2 . ((g . i2) . ((split (alice) (bob)) ><  (split (alice) (bob))))
               )
          )|
     %
     \just\equiv{Definição de g : |g = (either (g11) (g12))|, Cancelamento - + (18)}
     %
          |lcbr(
               lcbr(
                    alice . Leaf  = p1 . g11
               )(
                    alice . Fork  = p1 . (g12. ((split (alice) (bob)) >< (split (alice) (bob))))
               )
          )(
               lcbr(
                    bob  . Leaf = p2 . g11 
               )(
                    bob  . Fork = p2 . (g12 . ((split (alice) (bob)) ><  (split (alice) (bob))))
               )
          )|
     %
     \just\equiv{ Igualdade Extensional (71)}
     %
          |lcbr(
               lcbr(
                    (alice . Leaf) z  = (p1 . g11) z
               )(
                    (alice . Fork) w = (p1 . (g12 . ((split (alice) (bob)) >< (split (alice) (bob))))) w
               )
          )(
               lcbr(
                    (bob  . Leaf) z = (p2 . g11) z
               )(
                    (bob  . Fork) w = (p2 . (g12 . ((split (alice) (bob)) ><  (split (alice) (bob))))) w
               )
          )|
     %
     \just\equiv{Def-comp (72)}
     %
          |lcbr(
               lcbr(
                    alice (Leaf z)  = p1 (g11 z)
               )(
                    alice (Fork w)  = (p1 (g12 . ((split (alice) (bob)) >< (split (alice) (bob)))) w)
               )
          )(
               lcbr(
                    bob (Leaf z) = p2 (g11 z)
               )(
                    bob (Fork w) = (p2 (g12 . ((split (alice) (bob)) ><  (split (alice) (bob)))) w)
               )
          )|
     %
     \just\equiv{Def-comp (72)}
     %
          |lcbr(
               lcbr(
                    alice (Leaf z)  = p1 (g11 z)
               )(
                    alice (Fork w)  = p1 (g12 (((split (alice) (bob)) >< (split (alice) (bob)))w))
               )
          )(
               lcbr(
                    bob (Leaf z) = p2 (g11 z)
               )(
                    bob (Fork w) = p2 (g12 (((split (alice) (bob)) ><  (split (alice) (bob))) w))
               )
          )|
     %
     \just\equiv{Como w é do tipo Fork, temos que rescrever w : = (x,y), Def- |><| (72)}
     %
          |lcbr(
               lcbr(
                    alice (Leaf z)  = p1 (g11 z)
               )(
                    alice (Fork (x,y))  = p1 (g12 ((split (alice) (bob)) x , (split (alice) (bob)) y))
               )
          )(
               lcbr(
                    bob (Leaf z) = p2 (g11 z)
               )(
                    bob (Fork (x,y)) = p2 (g12 ((split (alice) (bob)) x , (split (alice) (bob)) y))
               )
          )|
     %
     \just\equiv{Def-split (77)}
     %
          |lcbr(
               lcbr(
                    alice (Leaf z)  = p1 (g11 z)
               )(
                    alice (Fork (x,y))  = p1 (g12 ((alice x, bob x), ( alice y, bob y)))
               )
          )(
               lcbr(
                    bob (Leaf z) = p2 (g11 z)
               )(
                    bob (Fork (x,y)) = p2 (g12 ((alice x, bob x), (alice y, bob y)))
               )
          )|
     %
     \just\equiv{ Definição de g11 : |g11 x = (x,x)|, Definição de g12 : |g12 ((a,b),(c,d)) = ( a + c, b + d)|}
     %
          |lcbr(
               lcbr(
                    alice (Leaf z)  = p1 (z,z)
               )(
                    alice (Fork (x,y))  = p1 ((alice x) + (alice y), (bob x) + (bob y))
               )
          )(
               lcbr(
                    bob (Leaf z) = p2 (z,z)
               )(
                    bob (Fork (x,y)) = p2 ((alice x) + (alice y), (bob x) + (bob y))
               )
          )|
     %
     \just\equiv{Def-proj (79)}
     %
          |lcbr(
               lcbr(
                    alice (Leaf z)  = z
               )(
                    alice (Fork (x,y))  = (alice x) + (alice y)
               )
          )(
               lcbr(
                    bob (Leaf z) = z
               )(
                    bob (Fork (x,y)) = (bob x) + (bob y)
               )
          )|
     %
     \qed
\end{eqnarray*}

\begin{code}
alice :: Num c => LTree c -> c
alice (Leaf z) = z
alice (Fork (x,y)) = (alice x) + (alice y)

bob :: Num c => LTree c -> c
bob (Leaf z) = z
bob (Fork (x,y)) = (bob x) + (bob y)
\end{code}

\subsection*{Problema 3}
Biblioteca |LTree3|:

\begin{code}
inLTree3 = either (Tri) (uncurry (uncurry Nodo))
\end{code}

Ora, sabendo que outLTree3 é o isomorfismo de inLTree3, temos então que outLTree3 . inLTree3 = id. Ou seja, a partir desta equação, conseguimos obter a definição de outLTree3.

\begin{eqnarray*}
     \start
           |outLTree3 . inLTree3 = id|
     %
     \just\equiv{Definição de inLTree3 : |(either (Tri) (uncurry (uncurry Nodo)))|}
     %
          |outLTree3 . (either (Tri) (uncurry (uncurry Nodo)))| = id
     %
     \just\equiv{Fusão-+ (20)}
     %
          |(either (outLTree3 . Tri) (outLTree3 .(uncurry (uncurry Nodo))))| = id
     %
     \just\equiv{Universal-+ (17)}
     %
          |lcbr( 
               outLTree3 . Tri = id . i1
          )(
               outLTree3 . (uncurry (uncurry Nodo)) = id . i2
          )|
     %
     \just\equiv{Natural-id (1), Igualdade extensional (71) considerando que x, t, y, z são LTree3}
     %
             |lcbr(
               (outLTree3  .  Tri) x = i1 x
          )(
               (outLTree3  .  (uncurry (uncurry Nodo))) ((t,y),z) = i2 ((t, y), z)
          )|
     %
     \just\equiv{Def-comp (72)}
     %
          |lcbr(
               outLTree3 (Tri x) = i1 x
          )(
               outLTree3 (uncurry (uncurry (Nodo ((t, y), z)))) = i2 ((t, y), z)
          )|
     %
     \just\equiv{Uncurry (84)}
     %
          |lcbr(
               outLTree3 (Tri x) = i1 x
          )(
               outLTree3 (uncurry (Nodo (t, y) z)) = i2 ((t, y), z)
          )|
     %
     \just\equiv{Uncurry (84)}
     %
          |lcbr(
               outLTree3 (Tri x) = i1 x
          )(
               outLTree3 (Nodo t y z) = i2 ((t, y), z)
          )|
     %
     \qed
\end{eqnarray*}

\begin{code}
outLTree3 (Tri x) = i1 x
outLTree3 (Nodo t y z) = i2 ((t,y),z)

baseLTree3 g f = g -|- ((f >< f) ><f)
\end{code}


Pela propriedade de Base-cata, temos que recLTree3 |f =  baseLTree3 id f = id + f >< (f >< f)|.

\begin{code}
recLTree3 f = id -|- ((f >< f) >< f)
\end{code}

Como |folhasSierp = cataLTree g1|, o diagrama correspondente a esta função é o seguinte:
\begin{eqnarray*}
     \xymatrix@@C=1cm@@R=2cm{
         |Ltree3 |
         \ar[d]_{|cataLTree g1|}
         \ar@@/^1.5pc/[rr]^(0.5){out} 
     & 
          \cong
     &
         |Tri + Ltree3 >< (Ltree3 >< Ltree3 )|
                \ar[d]^{recLTree3 (cataLtree3 g1)}
                \ar@@/^1.5pc/[ll]^(0.5){in}
     \\
          Tri^* && |Tri + Tri >< Tri >< Tri|
          \ar[ll]^{|g1|}
     }
\end{eqnarray*}


Pelo que podemos concluir que a seguinte definição:
\begin{code}
cataLTree3 f = f . (recLTree3 (cataLTree3 f)) . outLTree3
\end{code}


Relativamente, à função |geraSierp = anaLTree g2|, o seu diagrama é o seguinte:

\begin{eqnarray*}
     \xymatrix@@C=2cm@@R=2cm{
         |Ltree3|
         \ar@@/^1.5pc/[rr]^(0.5){out} 
     & 
          \cong
     &
         |Tri + Ltree3 >< (Ltree3 >< Ltree3 )|
         \ar@@/^1.5pc/[ll]^(0.5){in}
     \\
          |Tri >< Nat0|
          \ar[u]^{|anaLTree g|} 
          \ar[r]^(0.35){out_{|Nat0|}} 
          \ar@@/_1.5pc/[rr]_(0.5){g2} 
     & 
          |Tri >< 1 + Tri >< Nat0|
          \ar[r]^{|id + f >< g >< h|}
     &
          |Tri + Tri >< Tri >< Tri|
          \ar[u]_{recLTree3 (|anaLtree3 g|)}
     }
\end{eqnarray*}


Assim sendo, podemos inferir a seguinte definição:
\begin{code}
anaLTree3 f = inLTree3 . (recLTree3 (anaLTree3 f )) . f
\end{code}


Ora, sabemos que um hilomorfismo é a composição de catamorfismo, após um anamorfismo. Logo, o hilomorfismo |sierpinski = folhasSierp · geraSierp|, em que |folhasSierp = cataLTree g1| e |geraSierp = anaLTree g2|, caracteriza-se da seguinte forma:
\begin{eqnarray*}
     \xymatrix@@C=2cm@@R=2cm{
         |Tri >< Nat0|
         \ar[d]_{|anaLTree g|}
         \ar[rr]^{|g2|}
     &&
         |Tri + Tri >< Tri >< Tri|
         \ar[d]^{recLTree3 (|anaLTree3 g|)}
     \\
          |Ltree3|
          \ar[d]_{|cataLTree f|}
          \ar@@/^1.5pc/[rr]^(0.5){out}
     & 
          \cong
     &
          |Tri + LTree3 >< Ltree3 >< LTree3|
          \ar[d]^{recLTree3 (|cataLTree3 g|)}
          \ar@@/^1.5pc/[ll]^(0.5){in}
     \\
         Tri^* 
     && 
         |Tri + Tri >< Tri >< Tri|
         \ar[ll]_{f}
     }
\end{eqnarray*}


Logo,
\begin{code}
hyloLTree3 f g = cataLTree3 f . anaLTree3 g
\end{code}

Genes do hilomorfismo |sierpinski|:

\begin{code}
g1 = either (singl) (conc . (conc >< id))
g2 (((x,y),s), n) | n==0 = i1 ((x,y),s)
                  | otherwise = i2 ((x1,y1),s1) where 
                                 x1 = (((x,y),s'), n')
                                 y1 = (((x+s',y),s'),n')
                                 s1 = (((x,y+s'),s'),n')
                                 s' = div s 2
                                 n' = pred n
\end{code}

Após definir os genes do hilomorfismo |sierpinski|, vamos correr |teste = desenha (sierpinski (base,4))| e verificar se o triângulo gerado é de facto igual à figura 2:

$$ 
     \includegraphics[scale=0.20]{images/3ex.png}
     \caption{Função teste}
     \label{fig:teste}
$$
         

\subsection*{Problema 4}


\begin{eqnarray*}
     \xymatrix@@C=1cm@@R=2cm{
         Bit^*
         \ar[d]_{|cataList gf |}
         \ar@@/^1.5pc/[rr]^(0.5){outList} 
     & 
          \cong
     &
         1 + Bit |><| Bit^*
                \ar[d]^{|id + id >< (cataList gf )|}
                \ar@@/^1.5pc/[ll]^(0.5){inList}
     \\
          D(Bit^*) && 1 + Bit |><| D(Bit^*)
          \ar[ll]
     }
\end{eqnarray*}


Assim sendo, a função |propagate| é um catamorfismo de g e f. Ora, em g temos a divisão em dois casos, o caso em que lista inicial é vazia, e o caso em que é diferente de vazia, em que passaremos a função |f|, a uma nova função |g2|. ~
Nesta função, criámos o |m [a]|, ou seja, dentro de um |do|, vamos aplicar f a cada elemento da lista, do tipo a, retornando no final um monade de uma lista de a's. 
\begin{code}
propagate :: Monad m => (t -> m a) -> [t] -> m [a]
propagate f = cataList (g f) where
   g f = (either (return.nil) (g2 f))
   g2 f (a,b) = do{ h <- f a; t <- b; return (cons(h,t))}
\end{code}


Tomando como "inspiração" a função |propagate| inicial, a função |propagate3| será definida da mesma forma através do |cataList gf|. Seguindo o mesmo pensamento, a função g também terá a mesma definição, existindo apenas diferenças na função g2. 
Uma vez que será esta que criará um |m [Bit]|, a partir de um lista de |Bit| que não é vazia. Assim sendo, temos de pegar em cada lista, e passá-lo à função f, dada como argumento. No entanto, esta recebe como argumento um |Bit3|, pelo que teremos de criar um triplo com o elemento da lista. 
Finalmente, "pegamos" nos restantes elementos da lista, dada como argumento, e iremos criar um |m [Bit]|. 
\begin{code}
propagate3 :: (Monad m) => (Bit3 -> m Bit3) -> [Bit] -> m [Bit]
propagate3 f = cataList (g f) where
   g f = (either (return.nil) (g2 f))
   g2 f (a,b) = do{ h <- f (a,a,a); t <- b;  return (cons(v3(h),t))}
\end{code}


Temos que a função |bflip3|, que recebe como argumento um |Bit3|, pretende estender a função já definida, anteriormente, |bflip| aos três |Bit| existintes no |Bit3| argumento. Assim sendo, teremos que, num do, aplicar |bflip| a cada elemento do tuplo e posteriormente returnar o triplo constituiente com as três aplicações do |bflip|. Da seguinte forma, 
\begin{code}
bflip3 :: Bit3 -> Dist Bit3
bflip3 (a,b,c) = do { h <- (bflip(a)); t <- (bflip(b)); x <- (bflip(c)); return (h,t,x)} 
\end{code}

%----------------- Índice remissivo (exige makeindex) -------------------------%

\printindex

%----------------- Bibliografia (exige bibtex) --------------------------------%

\bibliographystyle{plain}
\bibliography{cp2122t}

%----------------- Fim do documento -------------------------------------------%
\end{document}