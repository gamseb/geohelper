#!/bin/sh

# Clean up the output folder and then create it again
OUTPUT_FOLDER=test_reports
rm -r "$OUTPUT_FOLDER" && mkdir -p "$OUTPUT_FOLDER"

# Run all test suites from robot files in subfolders
robot --log NONE --output "$OUTPUT_FOLDER/test_reports.xml" --report "$OUTPUT_FOLDER/test_reports.html" test_suites