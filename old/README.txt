LaTeX Dissertation Template for 
Computer Science PhD students at 
the University at Albany

I have created this template from my own dissertation to help
future PhD students save time in creating their own dissertations
in LaTeX.  This package of LaTeX files will help get you started.
It is setup with the proper margins and pages (as of 2010) for
dissertation submission.  Some features included are:

 - Automatic page numbering. (consistent with Albany's requirements)
 - Bibliography and citations
 - Glossary and Acronyms
 - Footnotes (numbered by chapter)

Knowledge of LaTeX will be required to create your content within
the chapters.  

*** Disclaimer ***
* The specifications of this template are correct as of May 2010.  
* You should seek out current documents to verify that the margins, 
* page numbering, etc is still correct.  

----------------------------------------------------------------------

How to get started and explanation of files:

- dissertation.tex
This is the main file.  All other files are included here.  
First, enter your personal information in the title info section.  
You should also add include statemtents in this file to add new chapters.

- ack.tex, abstract.tex, introduction.tex, conclusion.tex
Add the appropriate information (in LaTeX) to these files

- chapter.tex
Copy this file for each chapter of your dissertation.

- appendix.tex
Use this as a template for making appendcies.

- glossary.tex
Add glossary terms and acronyms here.  See example in glossary.tex and chapter.tex.

- bibliography.bib
Add your bibtex formatted bibliography entries here.  Cite them with \cite{} commands.
(See examples in bibliography.bib and chapter.tex)

- thesis.cls
This is the style file for your dissertation.  If you need to change page numbering, 
title, copyright, or acknowledgement pages, or margins do it here.  
(Though you shouldn't need to)

- splncs.bst 
Style file for the bibliography.

- abstract.html
HTML version of your abstract.  (Only used for online submission)

#######################################################################
# Scripts
#######################################################################

- clean.sh
Clean some temporary files.

- allclean.sh
Clean all temporary files.

- builddis
Build the dissertation, including glossary and bibliography, to ps and pdf, and open (Mac OS X).

- viewdis
Just view the dissertation (already built).

- pack.sh
tar and gzip all necessary files for backup or transfer.

@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@

I'd like to acknowldege RPI for providing me with the framework that I used
to build this package.  

I hope this is of help to someone.  Feel free to contact me with questions.  
I'd be happy to help with anything I haven't forgotten.  

Benjamin Carle
brc@cs.albany.edu
July 2010