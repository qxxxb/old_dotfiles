alias yd="pwd | tr -d '\n' | xsel -i -b"

alias dotfiles='git --git-dir=$HOME/.dotfiles --work-tree=$HOME'

function padtype {
    xinput set-prop "ELAN1300:00 04F3:3057 Touchpad" \
        "libinput Disable While Typing Enabled" $1
}

function javac_bin {
    javac -classpath bin/ -d bin/ $1
}

function java_bin {
    java -classpath bin/ $1
}

function javac_osu {
    javac -classpath "/home/plushie/Programs/static/osu-software/components.jar:bin/:lib/*" -d bin/ $1
}

function java_osu {
    java -enableassertions -classpath "/home/plushie/Programs/static/osu-software/components.jar:bin/:lib/*" $1
}

function javac_test_osu {
    javac -classpath "/home/plushie/Programs/static/osu-software/components.jar:/home/plushie/Programs/static/junit-4.13-beta-1.jar:/home/plushie/Programs/static/hamcrest-core-1.3.jar:bin/:lib/*" -d bin/ $1
}

function java_test_osu {
    java -enableassertions -classpath "/home/plushie/Programs/static/osu-software/components.jar:/home/plushie/Programs/static/junit-4.13-beta-1.jar:/home/plushie/Programs/static/hamcrest-core-1.3.jar:bin/:lib/*" org.junit.runner.JUnitCore $1
}
