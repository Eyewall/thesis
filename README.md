This will not run on ash as of September 2014 due to version issues.  Download latex for your machine and it should work.  



#####Included files:  #####
>aux_files/thesis.cls (shouldn't need to modify)  
>aux_files/ametsoc.bst (AMS bibliography style file)  
>aux_files/references.bib  (replace this with your own)  
>aux_files/user_commands.tex  (loads a bunch of commands at the top of dissertation, keeps main file clean)  
>  
>  
>dissertation.tex (this is your main tex file)  
>ack.tex	(ack.tex, appendix.tex, introduction.tex, chapter.tex are the individual chapter 	files)  
>appendix.tex  
>introduction.tex  
>chapter.tex  


If you need additional packages add them to the top of dissertation.tex or in user_commands.tex.  
Each chapter should be written in a different .tex file and then included in dissertation.tex.  
You will need to create your own .bib file for your references, lcoated in aux_files.  
The table of contents, list of tables, list of figures, and bibliography will be created automatically.  





#####Using the Makefile #####
The makefile is my simplified way of compiling latex in 1 command.  
edit ```Makefile``` so that tex and bibtex paths are correct. 
then simply run
```make dissertation```

make will run through 5 steps:  
1.	pdflatex -draftmode ; compile but dont produce output  
2.	bibtex ; sort out references  
3.	pdflatex -draftmode ; update citations and labels  
4.	pdflatex ; now that everything should be sorted compile and output   
5.	mv main pdf and synctex files out of aux_files and into main dir  

```make signature```  
Takes info from title_info.tex and creates the covering signature page needed for submission. 
Code is in thesis.cls it's a tight squeeze to fit on a singple page so may need editing yourself if you have lots of committe members or a long title.
