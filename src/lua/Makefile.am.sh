#!/bin/sh

cd "${0%/*}"
. ../makefile_gen.in

cat <<EOT > Makefile.am
INSTALL_LMOD = @INSTALL_LMOD@

luadatadir = \$(INSTALL_LMOD)

nobase_dist_luadata_DATA = \\
	$(listall sancuswebexample)
EOT
