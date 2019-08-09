(TeX-add-style-hook
 "presentation"
 (lambda ()
   (add-to-list 'LaTeX-verbatim-environments-local "semiverbatim")
   (add-to-list 'LaTeX-verbatim-macros-with-braces-local "hyperref")
   (add-to-list 'LaTeX-verbatim-macros-with-braces-local "hyperimage")
   (add-to-list 'LaTeX-verbatim-macros-with-braces-local "hyperbaseurl")
   (add-to-list 'LaTeX-verbatim-macros-with-braces-local "nolinkurl")
   (add-to-list 'LaTeX-verbatim-macros-with-braces-local "url")
   (add-to-list 'LaTeX-verbatim-macros-with-braces-local "path")
   (add-to-list 'LaTeX-verbatim-macros-with-delims-local "path")
   (TeX-run-style-hooks
    "latex2e"
    "beamer"
    "beamer10"
    "graphicx"
    "booktabs"
    "simplewick"
    "dsfont"
    "feynmp-auto")
   (TeX-add-symbols
    '("sfrac" 2)
    '("eqn" 1)
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
   (LaTeX-add-labels
    "ope"
    "C6O6VmA"
    "C6O6VpA"
    "eq:anomalousDimensionMatrixVpA")
   (LaTeX-add-bibitems
    "p3"
    "p1"
    "p2"))
 :latex)

