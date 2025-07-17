#!/usr/bin/env sh

export CUR="github.com/quintans/toolkit"
export NEW="github.com/fademan01/toolkit"
go mod edit -module ${NEW}
find . -type f -name '*.go' -exec perl -pi -e 's/$ENV{CUR}/$ENV{NEW}/g' {} \;