%########################################################
% Class for creating thesis and dissertations according
% to the PROMEC template.
% Made by Guilherme Fraga (guilhermecfraga@gmail.com)
% August, 2022
%########################################################
\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{promec}
\LoadClass[a4paper,12pt,oneside]{book}

\ProcessOptions
\RequirePackage{indentfirst,ifthen,graphics} %srcltx %lsymbol
\RequirePackage{amsmath,latexsym,xspace,epsfig,float,amssymb,fancyhdr}
\RequirePackage[utf8]{inputenc}
\RequirePackage{newtxtext,newtxmath}

\newif\ifpromec@frame \promec@framefalse
\DeclareOption{frame}{\promec@frametrue}
\newif\ifpromec@ptbr \promec@ptbrfalse
\DeclareOption{ptbr}{\promec@ptbrtrue}

\ProcessOptions



\setlength{\parindent}{1.25cm}
\renewcommand{\baselinestretch}{1.5} 
\ifpromec@ptbr
    \renewcommand\maketitle{%
	    %-------------------------
	    %Title page in portuguese
	    %-------------------------
	    \thispagestyle{empty}
	    \begin{center}
    		MINIST\'ERIO DA EDUCA\c{C}\~AO\\
	    	UNIVERSIDADE FEDERAL DO RIO GRANDE DO SUL\\
		    PROGRAMA DE  P\'OS-GRADUA\c{C}\~AO EM ENGENHARIA MEC\^ANICA
	    \end{center} \vspace{45mm} 
	    \begin{center} 
    		\uppercase{\titulo}
        \end{center} \vspace{12pt} 
	    \begin{center}
    		por \\ \vspace{15mm} 
	    	\autor
	    \end{center} \vfill
	    \begin{center}
    		\teoudi para obtenção do Título de\\
		    \md em Engenharia
	    \end{center} \vfill
	    \begin{center}
    		Porto Alegre, \data
    	\end{center}\newpage

        %--------------
        %Approval page
        %--------------
        \setcounter{page}{2} 
        \thispagestyle{plain}
        \begin{center}
            \vspace*{12pt plus 0pt minus 12pt}
            \titulo \\
            \null\vspace{12pt plus 0pt minus 12pt }
            por \\
            \null\vspace{0cm}
            \autor \\
            \autortitle
        \end{center}  
        \null \vfill
        { \teoudi \ifthenelse{\equal{\mscoudr}{Qualifica\xspace}}{submetido\xspace}{submetida\xspace} ao Corpo Docente do Programa de P\'{o}s-Gradua\c{c}\~{a}o em Engenharia Mec\^{a}nica, PROMEC, da Escola de Engenharia da Universidade Federal do Rio Grande do Sul, como parte dos requisitos necess\'{a}rios para a obten\c{c}\~{a}o do T\'\i tulo de 
            \vspace{24pt plus 0pt minus 24pt }
            \begin{center} \md em Engenharia \end{center}
            \vfill   \noindent \'{A}rea de Concentra\c{c}\~{a}o: \areaconc    \vspace{18pt}\par
            \noindent Orientador: \orientador
            \vspace{-6pt}
            \ifthenelse{\equal{\nocoorientador}{1\xspace}}{\\[6pt]
	        \noindent Co-Orientador: \coorientador}{\ifthenelse{\equal{\nocoorientador}{0\xspace}}{}{\vfill
		    \noindent  Co-Orientadores: \begin{minipage}[t]{13.3cm} \coorientador
            \end{minipage}}}
        }\par
        \vspace{.8cm}
        \noindent
        \avalouapro
        \vspace{.8cm}\par
        \banca\par
        \vspace{ 18pt plus 0pt minus 18pt }
        \hfill  \coord $\quad$\par
        \hfill Coordenador do PROMEC $\quad$
        \vfill
        \begin{center}
            Porto Alegre, \datab
        \end{center}
        \normalsize
        \clearpage 
    } 
    
\else
    \renewcommand\maketitle{%
        %----------------------
	    %Title page in english
	    %----------------------
        \thispagestyle{empty}
		\begin{center}
			MINISTRY OF EDUCATION\\
			FEDERAL UNIVERSITY OF RIO GRANDE DO SUL\\
			GRADUATE PROGRAM IN MECHANICAL ENGINEERING
		\end{center} \vspace{45mm} 
		\begin{center} 
			\uppercase{\tituloing}
		\end{center} \vspace{12pt} 
		\begin{center}
			by \\ \vspace{15mm} 
			\autor
		\end{center} \vfill
		\begin{center}
			\teoudiing submitted for the Degree of\\
			\mding in Engineering
		\end{center} \vfill
		\begin{center}
			Porto Alegre, \dataing
		\end{center}\newpage
	
	    %-------------------------
	    %Title page in portuguese
	    %-------------------------
	    \thispagestyle{empty}
	    \begin{center}
    		MINIST\'ERIO DA EDUCA\c{C}\~AO\\
	    	UNIVERSIDADE FEDERAL DO RIO GRANDE DO SUL\\
		    PROGRAMA DE  P\'OS-GRADUA\c{C}\~AO EM ENGENHARIA MEC\^ANICA
	    \end{center} \vspace{45mm} 
	    \begin{center} 
    		\uppercase{\titulo}
        \end{center} \vspace{12pt} 
	    \begin{center}
    		por \\ \vspace{15mm} 
	    	\autor
	    \end{center} \vfill
	    \begin{center}
    		\teoudi para obtenção do Título de\\
		    \md em Engenharia
	    \end{center} \vfill
	    \begin{center}
    		Porto Alegre, \data
    	\end{center}\newpage

        %--------------
        %Approval page
        %--------------
        \setcounter{page}{3} 
        \thispagestyle{plain}
        \begin{center}
            \vspace*{12pt plus 0pt minus 12pt}
            \titulo \\
            \null\vspace{12pt plus 0pt minus 12pt }
            por \\
            \null\vspace{0cm}
            \autor \\
            \autortitle
        \end{center}  
        \null \vfill
        { \teoudi \ifthenelse{\equal{\mscoudr}{Qualifica\xspace}}{submetido\xspace}{submetida\xspace} ao Corpo Docente do Programa de P\'{o}s-Gradua\c{c}\~{a}o em Engenharia Mec\^{a}nica, PROMEC, da Escola de Engenharia da Universidade Federal do Rio Grande do Sul, como parte dos requisitos necess\'{a}rios para a obten\c{c}\~{a}o do T\'\i tulo de 
            \vspace{24pt plus 0pt minus 24pt }
            \begin{center} \md em Engenharia \end{center}
            \vfill   \noindent \'{A}rea de Concentra\c{c}\~{a}o: \areaconc    \vspace{18pt}\par
            \noindent Orientador: \orientador
            \vspace{-6pt}
            \ifthenelse{\equal{\nocoorientador}{1\xspace}}{\\[6pt]
	        \noindent Co-Orientador: \coorientador}{\ifthenelse{\equal{\nocoorientador}{0\xspace}}{}{\vfill
		    \noindent  Co-Orientadores: \begin{minipage}[t]{13.3cm} \coorientador
            \end{minipage}}}
        }\par
        \vspace{.8cm}
        \noindent
        \avalouapro
        \vspace{.8cm}\par
        \banca\par
        \vspace{ 18pt plus 0pt minus 18pt }
        \hfill  \coord $\quad$\par
        \hfill Coordenador do PROMEC $\quad$
        \vfill
        \begin{center}
            Porto Alegre, \datab
        \end{center}
        \normalsize
        \clearpage 
    } 
\fi

\renewcommand\frontmatter{
	\clearpage
	\fancypagestyle{plain}{%
		\fancyhf{}
		\cfoot{\thepage}
		\renewcommand{\headrulewidth}{0pt}%
		\renewcommand{\footrulewidth}{0pt}%
	}
	\pagestyle{plain}
	\pagenumbering{roman}}
\renewcommand\mainmatter{
	\clearpage
	\fancypagestyle{plain}{%
		\fancyhf{}
		\rhead{\thepage}
		\renewcommand{\headrulewidth}{0pt}%
		\renewcommand{\footrulewidth}{0pt}%
	}
	\pagestyle{plain}
	\pagenumbering{arabic}}

%% ----------------------------------------
%  USER INPUTS
%% ----------------------------------------
\newcommand{\DocTitulo}[1]  { \newcommand{\titulo}{ {\uppercase{#1}} } }
\newcommand{\DocData}[1]   {\newcommand{\data}{#1\xspace}}
\newcommand{\DocDataEng}[1]   {\newcommand{\dataing}{#1\xspace}}
\newcommand{\DocDataB}[1]   {\newcommand{\datab}{#1\xspace}}
\newcommand{\DocOrientador}[1] {\newcommand{\orientador}{#1\xspace}}
\newcommand{\DocNoCoorientador}[1] {\newcommand{\nocoorientador}{#1\xspace}}
\newcommand{\DocCoorientador}[1] {\newcommand{\coorientador}{#1\xspace}}
\newcommand{\DocAreaConc}[1]{\newcommand{\areaconc}{#1\xspace}}
\newcommand{\DocAutor}[1]{\newcommand{\autor}{#1}}
\newcommand{\DocAutorTitle}[1]{\newcommand{\autortitle}{#1}}
\newcommand{\DocBanca}[1]{\newcommand{\banca}{#1\xspace}}
\newcommand{\DocBancaA}[1]{\newcommand{\bancaA}{#1\xspace}}
\newcommand{\DocBancaB}[1]{\newcommand{\bancaB}{#1\xspace}}
\newcommand{\DocBancaC}[1]{\newcommand{\bancaC}{#1\xspace}}
\newcommand{\DocCoord}[1]{\newcommand{\coord}{#1\xspace}}
\newcommand{\DocMScouDr}[1]{\newcommand{\mscoudr}{#1\xspace}}
\newcommand{\DocDef}[1]{\newcommand{\deff}{#1}}
\newcommand{\DocTituloIng}[1]  {\newcommand{\tituloing}{#1\xspace}}
\newcommand{\DocPalavrasChave}[1] {\newcommand{\printkeywordspt}{#1\xspace}}
\newcommand{\DocKeywords}[1] {\newcommand{\printkeywordsen}{#1\xspace}}
\newcommand{\DocKeywordsExtra}[1] {\newcommand{\printkeywordsextra}{#1\xspace}}
\newcommand{\DocResumo}[1] {\newcommand{\printresumo}{
		\thispagestyle{plain}
		\chapter*{RESUMO}
		
		\noindent#1\xspace
		
		\null\vspace{10mm}
		
		\noindent Palavras-chave: \printkeywordspt
		
		\null\vfill 
	}
}
\newcommand{\DocAbstract}[1] {\newcommand{\printabstract}{
		\thispagestyle{plain}
		\chapter*{\bfseries ABSTRACT} 		 
		
		{\noindent#1\xspace}				
		
		\null\vspace*{10mm}
		
		{\noindent Keywords: \printkeywordsen }
		
		\null\vfill 
	}	
}
\newcommand{\DocNResumosExtra}[1] {\newcommand{\noabstractextra}{#1\xspace}}
\newcommand{\DocAbstractExtraName}[1] {\newcommand{\absextraname}{#1\xspace}}
\newcommand{\DocTituloExtra}[1]  {\newcommand{\tituloextra}{#1\xspace}}
\newcommand{\DocResumoExtra}[1] {\newcommand{\printresumoextra}{				
		\thispagestyle{plain}			
		\chapter*{  \absextraname } 
		
		\null \vspace*{15mm}
		
		\noindent\ignorespaces#1 \xspace
		
		\null \vspace*{10mm}
		
		{\noindent Keywords: \printkeywordsextra}
		
		\null\vfill	 
	}	
}
\newcommand{\makeresumos}{
	\cleardoublepage\phantomsection
    \pdfbookmark{Resumo}{Abstract_PDF}
	\printresumo\par
	\cleardoublepage\phantomsection
    \pdfbookmark{Abstract}{Abstract_PDF}
	\printabstract					
	\ifthenelse{\equal{\noabstractextra}{1\xspace}}{\printresumoextra\xspace}
	{}
}
\@onlypreamble{\DocTitulo}
\@onlypreamble{\DocData}
\@onlypreamble{\DocDataB}
\@onlypreamble{\DocAutor}
\@onlypreamble{\DocMScouDr}
\@onlypreamble{\DocOrientador}
\@onlypreamble{\DocCoorientador}
\@onlypreamble{\DocAreaConc}
\@onlypreamble{\DocBanca}
\@onlypreamble{\DocBancaA}
\@onlypreamble{\DocBancaB}
\@onlypreamble{\DocBancaC}
\@onlypreamble{\DocCoord}
\@onlypreamble{\DocDef}
\@onlypreamble{\DocTituloIng}
\@onlypreamble{\DocResumo}
\@onlypreamble{\DocAbstract}
\@onlypreamble{\DocPalavrasChave}
\@onlypreamble{\DocKeywords}
\@onlypreamble{\DocNumExtra}
\@onlypreamble{\DocKeywordsExtra}
%% ----------------------------------------
%optional 3rd language
\newcommand{\DocAutorExtra}[1]  {\newcommand{\autorextra}{#1\xspace}}
\newcommand{\DocOrientExtra}[1]  {\newcommand{\orientextra}{#1\xspace}}
\newcommand{\DocDrExtra}[1]  {\newcommand{\drextra}{#1\xspace}}
\newcommand{\DocDescrExtra}[1]  {\newcommand{\descrextra}{#1\xspace}}
\newcommand{\DocDataExtra}[1]  {\newcommand{\dataextra}{#1\xspace}}
\@onlypreamble{\DocTituloExtra}
\@onlypreamble{\DocAutorExtra}
\@onlypreamble{\DocOrientExtra}
\@onlypreamble{\DocDrExtra}
\@onlypreamble{\DocDescrExtra}
\@onlypreamble{\DocDataExtra}
\@onlypreamble{\DocResumoExtra}
\newcommand{\teoudi}{
	\ifthenelse{\equal{\mscoudr}{Mestre\xspace}}{ Disserta\c{c}\~{a}o\xspace}
	{\ifthenelse{\equal{\mscoudr}{Doutor\xspace}}{Tese\xspace}
		{Exame de Qualifica\c{c}\~{a}o\xspace}}}
\newcommand{\teoudiing}{
	\ifthenelse{\equal{\mscoudr}{Master\xspace}}{Thesis\xspace}
	{\ifthenelse{\equal{\mscoudr}{Doctor\xspace}}{Dissertation\xspace}
		{Dissertation\xspace}}}
\newcommand{\mdq}{
	\ifthenelse{\equal{\mscoudr}{Mestre\xspace}}{Mestrado\xspace}{\ifthenelse{\equal{\mscoudr}{Doutor\xspace}}{Doutorado\xspace}{Doutorado\xspace}}}
\newcommand{\md}{
	\ifthenelse{\equal{\mscoudr}{Mestre\xspace}}{Mestre\xspace}{\ifthenelse{\equal{\mscoudr}{Doutor\xspace}}{Doutor\xspace}{Doutor\xspace}}}
\newcommand{\mding}{
	\ifthenelse{\equal{\mscoudr}{Master\xspace}}{Master\xspace}{\ifthenelse{\equal{\mscoudr}{Doctor\xspace}}{Doctor\xspace}{Doctor\xspace}}}
\newcommand{\avalouapro}{
	\ifthenelse{\equal{\deff}{Avaliacao}}{Comiss\~{a}o de Avalia\c{c}\~{a}o:
	}{Aprovada por:}}

%% ----------------------
%  Language and encoding
%% ----------------------
\ifpromec@ptbr
    \RequirePackage[english,brazilian]{babel}
\else
    \RequirePackage[brazilian,english]{babel}
\fi

\RequirePackage[T2A,T1]{fontenc} %helpfull for dead keys

%% ----------------------------------------
%  Margins
%% ----------------------------------------
\ifpromec@frame
	\RequirePackage[showframe,top = 30mm,left = 30mm,bottom = 20mm,right  = 20mm,headheight = 10mm, headsep = 10mm,footskip = 10mm]{geometry}
\else
	\RequirePackage[top = 30mm,left = 30mm,bottom = 20mm,right  = 20mm,headheight = 10mm, headsep = 10mm,footskip = 10mm]{geometry}
\fi

%% ----------------------------------------
%  Titles
%% ----------------------------------------
\RequirePackage{titlesec}
\titleformat{\chapter}{\normalfont\bfseries}{\makebox[1.25cm][l]{\thechapter}}{0pt}{\MakeUppercase}
\titleformat{\section}{\normalfont\bfseries}{\makebox[1.25cm][l]{\thesection}}{0pt}{}
\titleformat{\subsection}{\normalfont\bfseries}{\makebox[1.25cm][l]{\thesubsection}}{0pt}{}
\titleformat{\subsubsection}{\normalfont\bfseries}{\makebox[1.5cm][l]{\thesubsubsection}}{0pt}{}
\titlespacing*{\chapter}{0pt}{-22pt}{1.5em}[0pt]
\titleformat{\paragraph}[runin]{\itshape}{}{0pt}{}[.]

%--------------
% Floats setup
%--------------
\RequirePackage[justification=centering]{caption}
\DeclareCaptionLabelSeparator{bar}{ -- }
\captionsetup[table]{font={stretch=1.5}}
\captionsetup[figure]{font={stretch=1.5}}
\captionsetup{labelsep=bar}
\setcounter{secnumdepth}{4}	

%-------------------
% Table of contents
%-------------------
\renewcommand\tableofcontents{
    \chapter*{   \hfill{\MakeUppercase\contentsname} \hfill}
    \@starttoc{toc}
    }
\RequirePackage[titles]{tocloft}
\ifpromec@ptbr
    \renewcommand\cftfigpresnum{Figura~ }
    \renewcommand\cfttabpresnum{Tabela~}
\else
    \renewcommand\cftfigpresnum{Figure~}
    \renewcommand\cfttabpresnum{Table~}
\fi
\newlength\mylena
\settowidth\mylena{\cftfigpresnum}
\newlength\mylenb
\settowidth\mylenb{\cfttabpresnum}
\addtolength\cftfignumwidth{\mylena}
\addtolength\cfttabnumwidth{\mylenb}
\setlength{\cfttabindent}{0cm}
\setlength{\cftfigindent}{0cm}
\setlength{\cftsecindent}{0cm}
\setlength{\cftsubsecindent}{0cm}
\setlength{\cftchapnumwidth}{1.250cm}
\setlength{\cftsecnumwidth}{1.250cm}
\setlength{\cftsubsecnumwidth}{1.250cm}
\renewcommand{\cftchapleader}{\cftdotfill{\cftdotsep}}
\RequirePackage[nodisplayskipstretch]{setspace}
\RequirePackage[inline]{enumitem}
\RequirePackage[square,sort]{natbib}

%-----------------
% List of figures
%-----------------
\renewcommand\listoffigures{%
    \chapter*{ \hfill {\MakeUppercase{\listfigurename} } \hfill }
    \@starttoc{lof}
    }

%----------------
% List of tables
%----------------
\renewcommand\listoftables{%
    \chapter*{ \hfill {\MakeUppercase{\listtablename} } \hfill }
    \@starttoc{lot}
    }

%---------
% Apendix
%---------
\renewcommand\appendix{%
    \par\cleardoublepage\phantomsection
	\addtocontents{toc}{\protect\setcounter{tocdepth}{0}}
	\ifpromec@ptbr
	    \renewcommand{\appendixname}{AP\^{E}NDICE}
	\else
	    \renewcommand{\appendixname}{APPENDIX}
	\fi
	\renewcommand\@chapapp{\appendixname}
	\addtocontents{toc}{\protect\setlength{\cftchapnumwidth}{35mm}}
	\addtocontents{toc}{\protect\renewcommand*\protect\cftchappresnum{\@chapapp\ }}
	\titleformat{\chapter}{\normalfont}{\bfseries \@chapapp\ \thechapter \enspace -- \enspace }{0pt}{}
	%resets counters
	\setcounter{chapter}{0}
	\setcounter{section}{0}
	\setcounter{figure}{0}
	\setcounter{table}{0}
	\renewcommand{\thefigure}{\thechapter.\arabic{figure}}
	\renewcommand{\thetable}{\thechapter.\arabic{table}}
	\renewcommand\thechapter{\@Alph\c@chapter}
}

%-------
% Annex
%-------
\newcommand\annex{%
	\par\cleardoublepage\phantomsection
	\addtocontents{toc}{\protect\setcounter{tocdepth}{0}}
	\ifpromec@ptbr
	    \newcommand{\annexname}{ANEXO}
	\else
	    \newcommand{\annexname}{ANNEX}
	\fi
	\renewcommand\@chapapp{\annexname}  
	\addtocontents{toc}{\protect\renewcommand*\protect\cftchappresnum{\@chapapp\ }}
	\addtocontents{toc}{\protect\setlength{\cftchapnumwidth}{35mm}}
	\setcounter{chapter}{0}
	\setcounter{section}{0}
	\setcounter{figure}{0}
	\setcounter{table}{0}
	\renewcommand\thechapter{\@Roman\c@chapter}
	\titleformat{\chapter}{\normalfont}{\bfseries \@chapapp\ \thechapter \enspace -- \enspace }{0pt}{}
}

%----------------
% Names of lists
%----------------
\ifpromec@ptbr
    \newcommand{\ackname}{Agradecimentos}
    \newcommand{\laaname}{Lista de acr\^{o}nimos e abrevia\c{c}\~{o}es }
    \newcommand{\losname}{Lista de s\'{i}mbolos}
\else
    \newcommand{\ackname}{Acknowledgments}
    \newcommand{\laaname}{List of acronyms and abbreviations}
    \newcommand{\losname}{List of symbols}
\fi
\addto\captionsbrazilian{\renewcommand{\contentsname}{\'{I}ndice}}
\addto{\captionsbrazilian}{\renewcommand{\bibname}{REFER\^{E}NCIAS BIBLIOGR\'{A}FICAS}}
\addto{\captionsenglish}{\renewcommand{\bibname}{BIBLIOGRAPHY}}

%------------------
% Cross-references
%------------------
\RequirePackage[
	hidelinks,
	unicode,
	bookmarksnumbered,
	bookmarksdepth=3]{hyperref}	
\RequirePackage{cleveref}
\ifpromec@ptbr
    %Equations:
    \crefformat{equation}{Equação~#2#1#3}
    \Crefformat{equation}{Equação~#2#1#3}
    \crefrangeformat{equation}{Equações~#3#1#4--#5#2#6}
    \Crefrangeformat{equation}{Equações~#3#1#4--#5#2#6}
    \crefmultiformat{equation}{Equações~#2#1#3}{ e~#2#1#3}{, #2#1#3}{ e~#2#1#3}
    \Crefmultiformat{equation}{Equações~#2#1#3}{ e~#2#1#3}{, #2#1#3}{ e~#2#1#3}
    
    %Figures:
    \crefformat{figure}{Figura~#2#1#3}
    \Crefformat{figure}{Figura~#2#1#3}
    \crefrangeformat{figure}{Figuras~#3#1#4--#5#2#6}
    \Crefrangeformat{figure}{Figuras~#3#1#4--#5#2#6}
    \crefmultiformat{figure}{Figuras~#2#1#3}{ e~#2#1#3}{, #2#1#3}{ e~#2#1#3}
    \Crefmultiformat{figure}{Figuras~#2#1#3}{ e~#2#1#3}{, #2#1#3}{ e~#2#1#3}
    
    %Tables:
    \crefformat{table}{Tabela~#2#1#3}
    \Crefformat{table}{Tabela~#2#1#3}
    \crefrangeformat{table}{Tabelas~#3#1#4--#5#2#6}
    \Crefrangeformat{table}{Tabelas~#3#1#4--#5#2#6}
    \crefmultiformat{table}{Tabelas~#2#1#3}{ e~#2#1#3}{, #2#1#3}{ e~#2#1#3}
    \Crefmultiformat{table}{Tabelas~#2#1#3}{ e~#2#1#3}{, #2#1#3}{ e~#2#1#3}
    
    %Chapters:
    \crefformat{chapter}{Capítulo~#2#1#3}
    \Crefformat{chapter}{Capítulo~#2#1#3}
    \crefrangeformat{chapter}{Capítulos~#3#1#4--#5#2#6}
    \Crefrangeformat{chapter}{Capítulos~#3#1#4--#5#2#6}
    \crefmultiformat{chapter}{Capítulos~#2#1#3}{ e~#2#1#3}{, #2#1#3}{ e~#2#1#3}
    \Crefmultiformat{chapter}{Capítulos~#2#1#3}{ e~#2#1#3}{, #2#1#3}{ e~#2#1#3}
    
    %Sections:
    \crefformat{section}{Seção~#2#1#3}
    \Crefformat{section}{Seção~#2#1#3}
    \crefrangeformat{section}{Seções~#3#1#4--#5#2#6}
    \Crefrangeformat{section}{Seções~#3#1#4--#5#2#6}
    \crefmultiformat{section}{Seções~#2#1#3}{ e~#2#1#3}{, #2#1#3}{ e~#2#1#3}
    \Crefmultiformat{section}{Seções~#2#1#3}{ e~#2#1#3}{, #2#1#3}{ e~#2#1#3}

\else
    %Equations:
    \crefformat{equation}{Equation~#2#1#3}
    \Crefformat{equation}{Equation~#2#1#3}
    \crefrangeformat{equation}{Equations~#3#1#4--#5#2#6}
    \Crefrangeformat{equation}{Equations~#3#1#4--#5#2#6}
    \crefmultiformat{equation}{Equations~#2#1#3}{ and~#2#1#3}{, #2#1#3}{ and~#2#1#3}
    \Crefmultiformat{equation}{Equations~#2#1#3}{ and~#2#1#3}{, #2#1#3}{ and~#2#1#3}
    
    %Figures:
    \crefformat{figure}{Figure~#2#1#3}
    \Crefformat{figure}{Figure~#2#1#3}
    \crefrangeformat{figure}{Figures~#3#1#4--#5#2#6}
    \Crefrangeformat{figure}{Figures~#3#1#4--#5#2#6}
    \crefmultiformat{figure}{Figures~#2#1#3}{ and~#2#1#3}{, #2#1#3}{ and~#2#1#3}
    \Crefmultiformat{figure}{Figures~#2#1#3}{ and~#2#1#3}{, #2#1#3}{ and~#2#1#3}
    
    %Tables:
    \crefformat{table}{Table~#2#1#3}
    \Crefformat{table}{Table~#2#1#3}
    \crefrangeformat{table}{Tables~#3#1#4--#5#2#6}
    \Crefrangeformat{table}{Tables~#3#1#4--#5#2#6}
    \crefmultiformat{table}{Tables~#2#1#3}{ and~#2#1#3}{, #2#1#3}{ and~#2#1#3}
    \Crefmultiformat{table}{Tables~#2#1#3}{ and~#2#1#3}{, #2#1#3}{ and~#2#1#3}
    
    %Chapters:
    \crefformat{chapter}{Chapter~#2#1#3}
    \Crefformat{chapter}{Chapter~#2#1#3}
    \crefrangeformat{chapter}{Chapters~#3#1#4--#5#2#6}
    \Crefrangeformat{chapter}{Chapters~#3#1#4--#5#2#6}
    \crefmultiformat{chapter}{Chapters~#2#1#3}{ and~#2#1#3}{, #2#1#3}{ and~#2#1#3}
    \Crefmultiformat{chapter}{Chapters~#2#1#3}{ and~#2#1#3}{, #2#1#3}{ and~#2#1#3}
    
    %Sections:
    \crefformat{section}{Section~#2#1#3}
    \Crefformat{section}{Section~#2#1#3}
    \crefrangeformat{section}{Sections~#3#1#4--#5#2#6}
    \Crefrangeformat{section}{Sections~#3#1#4--#5#2#6}
    \crefmultiformat{section}{Sections~#2#1#3}{ and~#2#1#3}{, #2#1#3}{ and~#2#1#3}
    \Crefmultiformat{section}{Sections~#2#1#3}{ and~#2#1#3}{, #2#1#3}{ and~#2#1#3}
\fi   

%---------------
% Units package
%---------------
\RequirePackage{siunitx}
\ifpromec@ptbr
    \sisetup{
        output-decimal-marker = {,},
        per-mode = symbol,
    }
\else
    \sisetup{
        per-mode = symbol,
    }
\fi

%--------------------------------------
% Other packages added for convenience
%--------------------------------------
\RequirePackage{booktabs}	%For better table formatting
\RequirePackage{subcaption}	%Using subfigures
\RequirePackage[version=3]{mhchem}	%For writing chemical molecules and reactions		
\RequirePackage{microtype}  %For minimal improvements in formatting
\RequirePackage{physics}    %To support some mathematical symbols

%--------------
% Bibliography
%--------------
\makeatletter
\renewenvironment{thebibliography}[1]{%
    \cleardoublepage\phantomsection
    \addcontentsline{toc}{chapter}{\MakeUppercase{\bibname}}
    \chapter*{\bibname}%
    \@mkboth{\MakeUppercase\bibname}{\MakeUppercase\bibname}%
    \singlespacing
    \begin{enumerate}[label={[\arabic{enumi}]},itemindent=1.25cm,leftmargin=0em]
        \@openbib@code
        \sloppy
        \clubpenalty4000
        \@clubpenalty \clubpenalty
        \widowpenalty4000
        \sfcode`\.\@m}
        {\def\@noitemerr
        {\@latex@warning{Empty `thebibliography' environment}}%
    \end{enumerate}}
\makeatother
\bibliographystyle{Preparatory/bib_promec} 

%------------------------
% Correct a titlesec bug
%------------------------
\makeatletter
\patchcmd{\ttlh@hang}{\parindent\z@}{\parindent\z@\leavevmode}{}{}
\patchcmd{\ttlh@hang}{\noindent}{}{}{}
\makeatother

\endinput