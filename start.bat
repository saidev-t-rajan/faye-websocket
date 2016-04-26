@echo off
setlocal
set CLIENT_CERT=C:/ssl/keystore.jks
set PW=password
set OPTS=-J-Djavax.net.debug=all -J-Djavax.net.ssl.keyStore=%CLIENT_CERT% -J-Djavax.net.ssl.keyStorePassword=%PW% -J-Djavax.net.ssl.trustStore=%CLIENT_CERT% -J-Djavax.net.ssl.trustStorePassword=%PW%
jruby %OPTS% -S bin/puma -b "ssl://localhost.ssl:4567?keystore=%CLIENT_CERT%&keystore-pass=%PW%"