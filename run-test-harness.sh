#!/bin/sh
# Script to run jmeter test-harness

exec "ant" -f build.xml setup-suite
exec "ant" -f build.xml setup-users
exec "ant" -f build.xml setup-sites
exec "ant" -f build.xml read-only-test
exec "ant" -f build.xml full-test
