#    IPSUR: Introduction to Probability and Statistics Using R
#    Copyright (C) 2013 G. Jay Kerns
#
#    This file is part of IPSUR.
#
#    IPSUR is free software: you can redistribute it and/or modify
#    it under the terms of the GNU General Public License as published by
#    the Free Software Foundation, either version 3 of the License, or
#    (at your option) any later version.
#
#    IPSUR is distributed in the hope that it will be useful,
#    but WITHOUT ANY WARRANTY; without even the implied warranty of
#    MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
#    GNU General Public License for more details.
#
#    You should have received a copy of the GNU General Public License
#    along with IPSUR.  If not, see <http://www.gnu.org/licenses/>.

<<<<<<< HEAD
<<<<<<< HEAD
=======
basedir = git
>>>>>>> gnu/master
=======
basedir = git
>>>>>>> 26b97e4d6c4204f6833e700c9ac842420b97763c
psdir   = ps
pdfdir  = pdf
htmldir = html
texdir  = tex
orgfile = IPSUR
backdir = backup
Rdir    = R

all:
	-mkdir $(texdir)
	-mkdir $(psdir)
<<<<<<< HEAD
<<<<<<< HEAD
	emacs -Q -batch -eval "(progn (load \"~/git/IPSUR/init-ipsur.el\") (R) (org-publish \"ipsurlatex\"))"
=======
	emacs -Q -batch -eval "(progn (load \"~/$(basedir)/IPSUR/init-ipsur.el\") (R) (org-publish \"ipsurlatex\"))"
>>>>>>> gnu/master
=======
	emacs -Q -batch -eval "(progn (load \"~/$(basedir)/IPSUR/init-ipsur.el\") (R) (org-publish \"ipsurlatex\"))"
>>>>>>> 26b97e4d6c4204f6833e700c9ac842420b97763c
	-cd $(texdir); latex $(orgfile).tex; bibtex $(orgfile); makeindex $(orgfile); latex $(orgfile).tex; latex $(orgfile).tex; dvips $(orgfile)
	gs -dSAFER -dNOPAUSE -dBATCH -sDEVICE=pdfwrite -sPAPERSIZE=a4 -dPDFSETTINGS=/printer -dCompatibilityLevel=1.3 -dMaxSubsetPct=100 -dSubsetFonts=true -dEmbedAllFonts=true -sOutputFile=$(texdir)/$(orgfile).pdf $(texdir)/$(orgfile).ps
	-rm -r ~/.org-timestamps

<<<<<<< HEAD
<<<<<<< HEAD
latex:
=======
tex:
>>>>>>> 26b97e4d6c4204f6833e700c9ac842420b97763c
	-mkdir $(texdir)
	emacs -Q -batch -eval "(progn (load \"~/$(basedir)/IPSUR/init-ipsur.el\") (R) (org-publish \"ipsurlatex\"))"
	-rm -r ~/.org-timestamps

<<<<<<< HEAD
=======
tex:
	-mkdir $(texdir)
	emacs -Q -batch -eval "(progn (load \"~/$(basedir)/IPSUR/init-ipsur.el\") (R) (org-publish \"ipsurlatex\"))"
	-rm -r ~/.org-timestamps

=======
>>>>>>> 26b97e4d6c4204f6833e700c9ac842420b97763c
pdf:
	-rm $(pdfdir)
	cp -R $(texdir) $(pdfdir)
	-cd $(pdfdir); latex $(orgfile).tex; bibtex $(orgfile); makeindex $(orgfile); latex $(orgfile).tex; latex $(orgfile).tex; dvips $(orgfile)
	gs -dSAFER -dNOPAUSE -dBATCH -sDEVICE=pdfwrite -sPAPERSIZE=a4 -dPDFSETTINGS=/printer -dCompatibilityLevel=1.3 -dMaxSubsetPct=100 -dSubsetFonts=true -dEmbedAllFonts=true -sOutputFile=$(pdfdir)/$(orgfile).pdf $(pdfdir)/$(orgfile).ps

<<<<<<< HEAD
>>>>>>> gnu/master
=======
>>>>>>> 26b97e4d6c4204f6833e700c9ac842420b97763c
figures:
	-mkdir $(psdir)
	emacs -Q --batch --eval "(progn (load \"~/git/IPSUR/init-ipsur.el\") (R) (find-file \"~/git/IPSUR/IPSUR.org\") (org-babel-execute-buffer) (kill-buffer))"

Rtangle:
	-mkdir $(Rdir)
	emacs -Q --batch --eval "(progn (load \"~/git/IPSUR/init-ipsur.el\") (R) (find-file \"~/git/IPSUR/IPSUR.org\") (org-babel-tangle) (kill-buffer))"

backup:
	-mkdir $(backdir)
	cp $(texdir)/$(orgfile).pdf $(backdir)/$(orgfile).pdf 

clean:
	-rm -r $(texdir)
<<<<<<< HEAD
<<<<<<< HEAD
=======
	-rm -r $(pdfdir)
>>>>>>> gnu/master
=======
	-rm -r $(pdfdir)
>>>>>>> 26b97e4d6c4204f6833e700c9ac842420b97763c
	-rm -r ~/.org-timestamps

distclean:
	-rm -r $(texdir)
	-rm -r $(psdir)
	-rm -r $(backdir)
	-rm -r $(Rdir)
	-rm -r ~/.org-timestamps
