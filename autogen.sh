#!/bin/sh

BASE="$(dirname "$0")"

mkdir -p "$BASE/m4"
exec autoreconf -ivs "$BASE"
