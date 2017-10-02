default :
	lagda2pdf handlers.lagda

clean :
	rm -f *.aux *.log *.out *.ptb *.agdai check.agda handlers.tex

check :
	lhs2TeX --newcode --no-pragmas handlers.lagda -o Check.agda
	agda Check.agda
	rm -rf Check.agda*

