filesdir = $(pkgdatadir)

CONFFILES = \
	nginx/nginx.conf \
	nginx/nginx-server.conf

SUBSTFILES = run $(CONFFILES)
CLEANFILES = $(SUBSTFILES)

dist_files_SCRIPTS = run

nobase_dist_files_DATA = \
	nginx/mime.types \
	run.lua \
	$(CONFFILES) \
	static/404.html \
	static/crossdomain.xml \
	static/css/main.css \
	static/css/normalize.css \
	static/img/.gitignore \
	static/img/apple-touch-icon-precomposed.png \
	static/img/favicon.png \
	static/index.html \
	static/js/main.js \
	static/js/plugins.js \
	static/js/vendor/jquery-1.10.2.min.js \
	static/js/vendor/modernizr-2.6.2.min.js \
	static/robots.txt

do_subst = sed \
	-e 's,[@]localstatedir[@],$(localstatedir),g' \
	-e 's,[@]pkgdatadir[@],$(pkgdatadir),g' \
	-e 's,[@]pkgname[@],@PACKAGE@,g'

$(SUBSTFILES):
	mkdir -p `dirname $@`
	$(do_subst) < $< > $@~
	mv $@~ $@

run: run.sh.in
nginx/nginx.conf: nginx/nginx.conf.in
nginx/nginx-server.conf: nginx/nginx-server.conf.in
