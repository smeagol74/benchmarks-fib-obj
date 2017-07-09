#!/usr/bin/env bash

# utility functions for benchmark reporting

SOURCE=${BASH_SOURCE[0]}
pushd $(dirname "${SOURCE}")
REPORT_DIR=$(pwd)
REPORT=${REPORT_DIR}/out/report.md
mkdir -p $(dirname ${REPORT})
popd

echo ${REPORT}

function perform {
    # command to execute for benchmark
    CMD=$1
    # how many times to execute the command
    REPEAT=$2

    for ((i=1;i<=${REPEAT};i++)); do ${CMD}; done    
}

function formatTime {
    TIME=$1
    awk "BEGIN {printf \"%.3f\", ${TIME}/1000000}"
}

function report {
    echo $1 >> ${REPORT}
}

function resultsHeader {
    report "Язык | Время теста, сек. | Версия | Подробно о версии и среде исполнения"
    report "-----|-------------------|--------|-------------------------------------"
}

function reportStart {
    rm -f ${REPORT}
    report "\* **Компьютер:**"
    report "\* **Процессор:**"
    report "\* **ОС:** $(lsb_release --description)"
    report ""
    resultsHeader
}

function benchmark {
    # command to execute for benchmark
    CMD=$1
    # how many times to execute the command
    REPEAT=$2
    # count of tests per one CMD call
    COUNT=$3
    # programming language
    LANG=$4
    # total count of performed tests
    TESTS=$[${REPEAT} * ${COUNT}]

    START=$(date +%s%N)

    echo ""
    echo "${LANG}"

    perform "${CMD}" "${REPEAT}"

    END=$(date +%s%N)

    TIME=$[(${END} - ${START}) / 1000]
    TEST_TIME=$[${TIME} / ${TESTS}]

    report "${LANG} | $(formatTime ${TEST_TIME}) | | " 

    echo "Total time: $(formatTime ${TIME})s"
    echo "Time per test: $(formatTime ${TEST_TIME})s"
}
