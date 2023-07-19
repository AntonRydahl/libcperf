function get_args() {
    local fun=$1
    local ARGSTR=$(cat ../LLVM2/llvm-project/libc/src/math/${fun}.h | grep "(*)") #| cut -d " " -f1
    local RETTYPE=$(echo ${ARGSTR//long long/longlong} | cut -d " " -f1)
    local RETTYPE=${RETTYPE//longlong/long long}

    local args=$(echo $ARGSTR | cut -d "(" -f2)
    args=$(echo $args | cut -d ")" -f1)
    # replace all long longs with longlong
    args=${args//long long/longlong}
    args=${args//long double/longdouble}
    args=${args//long int/longint}
    args=${args// \*/\* }
    local ARGS="";
    for arg in ${args//,/ }; do
        case "$arg" in 
            longlong|longint\longdouble|float|double|int|int\*|float\*|double\*)
            if [ -z "$ARGS" ]; then
                ARGS="$arg"
            else
                ARGS="$ARGS,$arg"
            fi
            ;;
        esac
    done
    ARGS=${ARGS//longlong/long long}
    ARGS=${ARGS//longdouble/long double}
    ARGS=${ARGS//longint/long int}
    echo $ARGS
}