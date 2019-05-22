#!/usr/bin/env bash
REPORT_PATH=/home/jakub/dev/repos/gcc_vec/reports

for f in $(find ./src/ -name '*mandelbrot.cpp');
    do
        # Generate assembly output and optimization reports for all *mandelbrot.cpp files
        FILENAME=$(echo ${f} | sed -r "s/.+\/(.+)\..+/\1/")
        echo "Generating assembly for file: ${FILENAME}"
        declare -a OPT_REPORTS=(
            "-fopt-info-vec-missed=${REPORT_PATH}/${FILENAME}_vec.miss "
            "-fopt-info-vec-optimized=${REPORT_PATH}/${FILENAME}_vec.opt"
            "-fopt-info-loop-missed=${REPORT_PATH}/${FILENAME}_loop.miss"
            "-fopt-info-loop-optimized=${REPORT_PATH}/${FILENAME}_loop.opt"
        )
        # HACK - GCC does not allow different report files for different optimization reports
        # so run GCC once for every type for report
        for REPORT in "${OPT_REPORTS[@]}"
        do
            echo -e "\t report: ${REPORT}"
            gcc -S -O3 ${f} -o assembly/${FILENAME}.s ${REPORT}
        done
        # Filter out lines reporting about optimizations in stdlib
        # cat $f | grep mandelbrot > $(dirname ${f})/${FILENAME}_filtered.txt;
 done