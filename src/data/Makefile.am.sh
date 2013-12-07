#!/bin/sh

cd "$(dirname "$0")"

. ../makefile_gen.in

EXTRAFILES="404.html nginx/mime.types"

cat <<EOT > Makefile.am
filesdir = \$(pkgdatadir)

nobase_dist_files_DATA = \\
	$(list $EXTRAFILES) \\
	$(listall static)
EOT
