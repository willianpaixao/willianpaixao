######################
#      Makefile      #
######################

filename=willianpaixao

pdf: 
	xelatex ${filename}
	xelatex ${filename}

text: html
	html2text -width 100 -style pretty ${filename}.html | sed -n '/./,$$p' | head -n-2 > ${filename}.txt

html:
	@#latex2html -split +0 -info "" -no_navigation ${filename}
	htxelatex ${filename}

view:
	while inotifywait --event modify,move_self,close_write ${filename}.tex; \
		do xelatex -halt-on-error ${filename} && xelatex -halt-on-error \
		${filename}; done

clean:
	rm -f ${filename}.{4ct,4tc,aux,bbl,blg,css,dvi,html,idv,lg,log,nav,out,pdf,ps,snm,tmp,toc,txt,xdv,xref}
