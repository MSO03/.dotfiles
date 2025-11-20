set -o vi
unclutter &
#aliases not inherited by child processes so does not go in .bash_profile
alias firefox="nohup firefox 2> /dev/null &
rm nohup.out"

alias brave="nohup brave --no-sandbox 2> /dev/null &
rm nohup.out"

PS1='\[\e[38;5;196m\]\u\[\e[38;5;202m\]@\[\e[38;5;208m\]\H\[\e[38;5;64m\]\w\[\e[0m\]\\$'

export EDITOR="vim"

pdf(){
	pdflatex -output-directory pdfs "$1"
	rm pdfs/template.log #Not working for some reason
}
