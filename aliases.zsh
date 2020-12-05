# Shortcuts
alias copyssh="pbcopy < $HOME/.ssh/id_rsa.pub"
alias reloadshell="source $HOME/.zshrc"
alias reloaddns="dscacheutil -flushcache && sudo killall -HUP mDNSResponder"
alias ll="/usr/local/opt/coreutils/libexec/gnubin/ls -AhlFo --color --group-directories-first"
alias phpstorm='open -a /Applications/PhpStorm.app "`pwd`"'
alias shrug="echo '¯\_(ツ)_/¯' | pbcopy"
alias c="clear"

# Directories
alias dotfiles="cd $DOTFILES"
alias library="cd $HOME/Library"
alias sites="cd $HOME/Sites"
alias lara="sites && cd laravel/"
alias docs="lara && cd docs/"

# Laravel
alias a="php artisan"
alias fresh="php artisan migrate:fresh --seed"
alias seed="php artisan db:seed"

# PHP
alias cfresh="rm -rf vendor/ composer.lock && composer i"
alias php74="docker run -it -w /data -v ${PWD}:/data:delegated --entrypoint php --rm registry.gitlab.com/grahamcampbell/php:7.4"
alias php8="docker run -it -w /data -v ${PWD}:/data:delegated --entrypoint php --rm registry.gitlab.com/grahamcampbell/php:8.0"
alias composer="php -d memory_limit=-1 /usr/local/bin/composer"

# JS
alias nfresh="rm -rf node_modules/ package-lock.json && npm install"
alias watch="npm run watch"

# Vagrant
alias v="vagrant global-status"
alias vup="vagrant up"
alias vhalt="vagrant halt"
alias vssh="vagrant ssh"
alias vreload="vagrant reload"
alias vrebuild="vagrant destroy --force && vagrant up"

# Docker
alias docker-composer="docker-compose"

# Git
alias gst="git status"
alias gb="git branch"
alias gc="git checkout"
alias gl="git log --oneline --decorate --color"
alias amend="git add . && git commit --amend --no-edit"
alias commit="git add . && git commit -m"
alias diff="git diff"
alias force="git push --force"
alias nuke="git clean -df && git reset --hard"
alias pop="git stash pop"
alias pull="git pull"
alias push="git push"
alias resolve="git add . && git commit --no-edit"
alias stash="git stash -u"
alias unstage="git restore --staged ."
alias wip="commit wip"


alias nrw="npm run watch"
alias nrp="npm run prod"

alias start="yarn start && say 'Done starting'"
alias build="yarn build && say 'Done buildling'"
alias serve="yarn serve && say 'Done serving'"
alias watch="yarn watch && say 'Done watching'"

# Projects

alias s-laan="cd /Users/msjaber/code/web/ibtikar/laan-be && s ."

# Folders
alias s="subl"
alias desk="cd ~/Desktop"
alias cod="cd ~/code"
alias web="cd ~/code/web"
alias exp="cd ~/code/experiments"
alias download="open ~/Downloads/"
alias temp="cd ~/Downloads/Temp"
alias dropbox="open ~/Dropbox/"
alias bookstore="open ~/Dropbox/bookstore"
alias courses="open /Volumes/Windows/Courses"
alias snotes="s ~/code/notes"
alias sadeed="cd ~/code/sadeed"
alias jawad="cd ~/code/jawad"
alias c="clear"
alias sleepy="pmset sleepnow"
alias editz="s $DOTFILES"
alias system="open /Applications/System\ Preferences.app/"
alias sd="/Applications/Mission\ Control.app/Contents/MacOS/Mission\ Control"
alias hidefiles="defaults write com.apple.finder AppleShowAllFiles NO && killall Finder" 
alias showfiles="defaults write com.apple.finder AppleShowAllFiles YES && killall Finder" 
alias sleepy="pmset sleepnow"
alias o="open"
alias a="php artisan"
alias rollback="php artisan migrate:rollback"
alias migrate="php artisan migrate"
alias seed="php artisan db:seed"
alias reset="php artisan migrate:fresh --seed"
alias openugv="open /Users/mohammads.jaber/code/web/ugv"
alias copypath='pwd|pbcopy'
alias msjaber="cd ~/code/web/msjaber.com && open http://localhost:1313/ && s . && hugo server --noHTTPCache -D"
alias notes="s ~/code/notes"
function commit() {
    git add .
    
    if [ "$*" != "" ]
    then
        git commit -m "$*"
    else
        git commit -m "-"
    fi
}

function pushheroku() {
    # npm run prod
    
    git add .
    
    if [ "$*" != "" ]
    then
        git commit -m "$*"
    else
        git commit -m "-"
    fi
    
    git push heroku master
}

alias ph="pushheroku"

function pushmaster() {
    git add .
    git commit -m "$*"
    git push -u origin master
}

alias pm="pushmaster"
alias backup="pushmaster backup"

function translate() {
    trans -b :ar "$1"
}

twitter() {
    open "http://www.twitter.com"
}

youtube(){
	search=""
	echo "Youtubing: $@"
	for term in $@; do
		search="$search%20$term"
	done
	open "http://www.youtube.com/results?search_query=$search"
}

google() {
    search=""
    echo "Googling: $@"
    for term in $@; do
        search="$search%20$term"
    done
    open "http://www.google.com/search?q=$search"
}

youtube-dl-mp3(){
    youtube-dl --extract-audio --audio-format mp3 $@
}