#!/bin/bash
set -o nounset

function get_mpfr_name() {
    local fun=$1
    if [[ "${fun:0-1}" == "f" ]] && [[ "$fun" != "erf" ]] && [[ "$fun" != "modf" ]]; then
        fun=${fun::-1}
    fi
    if [[ "$fun" == "ceil" ]]; then
        fun="rint"
    elif [[ "$fun" == "fabs" ]]; then
        fun="abs"
    elif [[ "$fun" == "floor" ]]; then
        fun="rint"
    elif [[ "$fun" == "fdim" ]]; then
        fun="dim"
    elif [[ "$fun" == "fmax" ]]; then
        fun="max"
    elif [[ "$fun" == "fmin" ]]; then
        fun="min"
    elif [[ "$fun" == "llrint" ]]; then
        fun="rint"
    elif [[ "$fun" == "lrint" ]]; then
        fun="rint"
    elif [[ "$fun" == "llround" ]]; then
        fun="rint"
    elif [[ "$fun" == "lround" ]]; then
        fun="rint"
    elif [[ "$fun" == "sincos" ]]; then
        fun="sin_cos"
    elif [[ "$fun" == "tgamma" ]]; then
        fun="gamma"
    fi
    echo mpfr_$fun
}