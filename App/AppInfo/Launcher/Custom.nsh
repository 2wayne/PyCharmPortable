${SegmentFile}

Var libclasspath

${SegmentPre}
    ${ForEachFile} "$0" "$1" "$EXEDIR\App\PyCharm\lib\*.jar"
        StrCpy $libclasspath "$libclasspath;lib\$1"
    ${NextFile}
 
    ${SetEnvironmentVariablesPath} PAL:libclasspath $libclasspath
!macroend
