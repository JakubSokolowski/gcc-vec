#!/usr/bin/env bash

SIMPLE_REPORT_PATH=/home/jakub/dev/repos/gcc_vec/reports/loop
rm ./reports/loop/*.miss
rm ./reports/loop/*.opt
echo "Generating assembly and reports for simple examples"
for f in $(find ./src/loop-examples/ -name '*simple.c');
    do
        # Generate assembly output and optimization reports for all *mandelbrot.cpp files
        FILENAME=$(echo ${f} | sed -r "s/.+\/(.+)\..+/\1/")
        echo "Generating assembly for file: ${FILENAME}"
        declare -a OPT_REPORTS=(
            "-fopt-info-vec-missed=${SIMPLE_REPORT_PATH}/${FILENAME}_vec.miss "
            "-fopt-info-vec-optimized=${SIMPLE_REPORT_PATH}/${FILENAME}_vec.opt"
        )
        # Generate assembly without optimization
        gcc -S -std=c99 ${f} -o assembly/loop/${FILENAME}_basic.s
        # HACK - GCC does not allow different report files for different optimization reports
        # so run GCC once for every type for report
        for REPORT in "${OPT_REPORTS[@]}"
        do
            echo -e "\t report: ${REPORT}"
            gcc -S -std=c99 -O3  ${f} -o assembly/loop/${FILENAME}.s ${REPORT}
        done
        # Filter out lines reporting about optimizations in stdlib
        # cat $f | grep mandelbrot > $(dirname ${f})/${FILENAME}_filtered.txt;
 done

for f in $(find ./src/loop-examples/ -name '*simple.cpp');
    do
        # Generate assembly output and optimization reports for all *mandelbrot.cpp files
        FILENAME=$(echo ${f} | sed -r "s/.+\/(.+)\..+/\1/")
        echo "Generating assembly for file: ${FILENAME}"
        declare -a OPT_REPORTS=(
            "-fopt-info-vec-missed=${SIMPLE_REPORT_PATH}/${FILENAME}_vec.miss "
            "-fopt-info-vec-optimized=${SIMPLE_REPORT_PATH}/${FILENAME}_vec.opt"
        )
        # Generate assembly without optimization
        gcc -S ${f} -o assembly/loop/${FILENAME}_basic.s
        # HACK - GCC does not allow different report files for different optimization reports
        # so run GCC once for every type for report
        for REPORT in "${OPT_REPORTS[@]}"
        do
            echo -e "\t report: ${REPORT}"
            gcc -S -O3 -ffast-math  ${f} -o assembly/loop/${FILENAME}.s ${REPORT}
        done
        # Filter out lines reporting about optimizations in stdlib
        # cat $f | grep mandelbrot > $(dirname ${f})/${FILENAME}_filtered.txt;
 done