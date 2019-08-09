(TeX-add-style-hook
 "thesis"
 (lambda ()
   (TeX-add-to-alist 'LaTeX-provided-class-options
                     '(("report" "11pt")))
   (TeX-add-to-alist 'LaTeX-provided-package-options
                     '(("inputenc" "utf8") ("fontenc" "T1") ("tocbibind" "nottoc" "numbib")))
   (add-to-list 'LaTeX-verbatim-environments-local "lstlisting")
   (add-to-list 'LaTeX-verbatim-macros-with-braces-local "lstinline")
   (add-to-list 'LaTeX-verbatim-macros-with-braces-local "hyperref")
   (add-to-list 'LaTeX-verbatim-macros-with-braces-local "hyperimage")
   (add-to-list 'LaTeX-verbatim-macros-with-braces-local "hyperbaseurl")
   (add-to-list 'LaTeX-verbatim-macros-with-braces-local "nolinkurl")
   (add-to-list 'LaTeX-verbatim-macros-with-braces-local "url")
   (add-to-list 'LaTeX-verbatim-macros-with-braces-local "path")
   (add-to-list 'LaTeX-verbatim-macros-with-delims-local "lstinline")
   (add-to-list 'LaTeX-verbatim-macros-with-delims-local "path")
   (TeX-run-style-hooks
    "latex2e"
    "titlepage"
    "introduction"
    "fundamentalConcepts"
    "diagram"
    "outlook"
    "acknowledgement"
    "appendix"
    "report"
    "rep11"
    "inputenc"
    "fontenc"
    "lmodern"
    "amsmath"
    "amssymb"
    "bbold"
    "color"
    "feynmp-auto"
    "simplewick"
    "enumerate"
    "cancel"
    "hyperref"
    "textpos"
    "listings"
    "xcolor"
    "breqn"
    "tocbibind"
    "graphicx")
   (TeX-add-symbols
    '("sfrac" 2)
    '("eqn" 1)
    "Lagr"
    "HRule"
    "s"
    "bu"
    "cD"
    "cO"
    "cP"
    "as"
    "wh"
    "nn"
    "ol"
    "wt"
    "ve"
    "IM"
    "RE"
    "po"
    "mev"
    "gev"
    "tvs"
    "mvs"
    "bmvs"
    "MSb"
    "aGG"
    "gsim"
    "lsim")
   (LaTeX-add-bibliographies))
 :latex)

