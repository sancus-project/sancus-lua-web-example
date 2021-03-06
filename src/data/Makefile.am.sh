#!/bin/sh

cd "$(dirname "$0")"

. ../makefile_gen.in

EXTRAFILES="run.lua nginx/mime.types"
CONFFILES="nginx/nginx.conf nginx/nginx-server.conf"

cat <<EOT > Makefile.am
filesdir = \$(pkgdatadir)

CONFFILES = \\
	$(list $CONFFILES)

SUBSTFILES = run \$(CONFFILES)
CLEANFILES = \$(SUBSTFILES)

dist_files_SCRIPTS = run

nobase_dist_files_DATA = \\
	$(list $EXTRAFILES) \\
	\$(CONFFILES) \\
	$(listall static)

do_subst = sed \\
	-e 's,[@]localstatedir[@],\$(localstatedir),g' \\
	-e 's,[@]pkgdatadir[@],\$(pkgdatadir),g' \\
	-e 's,[@]pkgname[@],@PACKAGE@,g'

\$(SUBSTFILES):
	mkdir -p \`dirname \$@\`
	\$(do_subst) < \$< > \$@~
	mv \$@~ \$@

run: run.sh.in
EOT
for x in $CONFFILES; do
	echo "$x: $x.in"
done >> Makefile.am
