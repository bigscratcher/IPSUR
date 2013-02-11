
(setq load-path (cons "~/git/org-mode/lisp" load-path))
(setq load-path (cons "~/git/org-mode/contrib/lisp" load-path))
(setq load-path (cons "~/.emacs.d/elpa/ess-20130119.1705/lisp" load-path))
(require 'ess-site)
(setq ess-ask-for-ess-directory nil)
(require 'ox-latex)
;; (org-babel-lob-ingest "~/org/td-lob.org")
(setq org-confirm-babel-evaluate nil)
(org-babel-do-load-languages
 'org-babel-load-languages
 '((R . t)
   (dot . t)
   (emacs-lisp . t)
   (latex . t)
   (org . t)
   (sh . t)))
(setq org-entities-user nil)
(add-to-list 'org-entities-user '("space" "\\ " nil " " " " " " "–"))
(setq org-export-latex-packages-alist nil)
; (setq ox-latex-pdf-process '("texi2dvi --pdf --clean --verbose --batch %f"))
;(setq org-latex-pdf-process (quote ("pdflatex -interaction nonstopmode -output-directory %o %f" "bibtex %b" "pdflatex -interaction nonstopmode -output-directory %o %f" "pdflatex -interaction nonstopmode -output-directory %o %f")))
(setq org-latex-pdf-process (quote ("texi2dvi --pdf --clean --verbose --batch %f" "bibtex %b" "texi2dvi --pdf --clean --verbose --batch %f" "texi2dvi --pdf --clean --verbose --batch %f")))

;(require 'org-special-blocks)
(setq ox-latex-tables-booktabs nil)
(setq ox-latex-title-command nil)
(setq org-latex-hyperref-format "\\ref{%s}")
(setq ox-latex-remove-logfiles t)
(setq org-e-latex-toc-command "\\tableofcontents\n\n")
(setq ox-latex-classes nil)
(add-to-list 'ox-latex-classes
            '("scrbook"
               "\\documentclass{scrbook}
               [NO-DEFAULT-PACKAGES]"
               ("\\chapter{%s}" . "\\chapter*{%s}")
               ("\\section{%s}" . "\\section*{%s}")
               ("\\subsection{%s}" . "\\subsection*{%s}")
               ("\\subsubsection{%s}" . "\\subsubsection*{%s}")
               ("\\paragraph{%s}" . "\\paragraph*{%s}")))
