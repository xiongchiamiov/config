export KDEWM=awesome

ck-launch-session nm-applet &
#amarok &
stjerm -k f12 -ah 0 -o 60 -tp top -h 250 -w 1366 &
#batterymon &

export PATH=$PATH:/home/pearson/bin
export EDITOR=/usr/bin/vim

export LS_COLORS='di=01;35:ln=01;36:pi=40;33:so=00;35:do=00;35:bd=40;33;01:cd=40;33;01:or=40;31;01:su=37;41:sg=30;43:tw=30;42:ow=34;42:st=37;44:ex=01;32:*.tar=01;31:*.tgz=01;31:*.arj=01;31:*.taz=01;31:*.lzh=01;31:*.lzma=01;31:*.zip=01;31:*.z=01;31:*.Z=01;31:*.dz=01;31:*.gz=01;31:*.bz2=01;31:*.bz=01;31:*.tbz2=01;31:*.tz=01;31:*.deb=01;31:*.rpm=01;31:*.jar=01;31:*.rar=01;31:*.ace=01;31:*.zoo=01;31:*.cpio=01;31:*.7z=01;31:*.rz=01;31:*.jpg=00;35:*.jpeg=00;35:*.gif=00;35:*.bmp=00;35:*.pbm=00;35:*.pgm=00;35:*.ppm=00;35:*.tga=00;35:*.xbm=00;35:*.xpm=00;35:*.tif=00;35:*.tiff=00;35:*.png=00;35:*.svg=00;35:*.svgz=00;35:*.mng=00;35:*.pcx=00;35:*.mov=00;35:*.mpg=00;35:*.mpeg=00;35:*.m2v=00;35:*.mkv=00;35:*.ogm=00;35:*.mp4=00;35:*.m4v=00;35:*.mp4v=00;35:*.vob=00;35:*.qt=00;35:*.nuv=00;35:*.wmv=00;35:*.asf=00;35:*.rm=00;35:*.rmvb=00;35:*.flc=00;35:*.avi=00;35:*.fli=00;35:*.flv=00;35:*.gl=00;35:*.dl=00;35:*.xcf=00;35:*.xwd=00;35:*.yuv=00;35:*.aac=00;36:*.au=00;36:*.flac=00;36:*.mid=00;36:*.midi=00;36:*.mka=00;36:*.mp3=00;36:*.mpc=00;36:*.ogg=00;36:*.ra=00;36:*.wav=00;36:';

export CONSOLEFONT="ter-v16b"

# for OOo
export OOO_FORCE_DESKTOP=gnome

# webwork
export PATH=$PATH:/opt/webwork/webwork2/bin
export WEBWORK_ROOT=/opt/webwork/webwork2

export CENG_PROJ_HOME='/home/pearson/sites'
export PYTHON_PATH=$CENG_PROJ_HOME/ceng-lib/main/python
export PYTHONPATH='/home/pearson/Documents/'
export PYTHONSTARTUP=~/.pythonrc
export CLASSPATH=$CLASSPATH:/home/pearson/packages/sqlitejdbc-v056.jar
export JYTHONPATH=$JYTHONPATH:/home/pearson/packages/django-jython-1.1.1
export JYTHONPATH=$JYTHONPATH:/home/pearson/packages/django-debug-toolbar
export JYTHONPATH=$JYTHONPATH:/home/pearson/packages/postgresql-8.4-701.jdbc4.jar

export _JAVA_AWT_WM_NONREPARENTING=1;


. $HOME/.zshrc
