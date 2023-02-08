#!/bin/sh
set -eux
echo "${PLAN}" | base64 -d | zcat >plan.xml
echo "${PLATFORM}" | base64 -d | zcat >platform.xml
echo "${SUBJECT}" | base64 -d | zcat >subject.xml
/mbici-wf generate -plan plan.xml -platform platform.xml -subject subject.xml -workflow workflow.xml
/mbici-wf run -batch -workflow workflow.xml -resultDir result -cacheDir cache -workDir work
