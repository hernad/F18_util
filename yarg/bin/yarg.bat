@if "%DEBUG%" == "" @echo off
@rem ##########################################################################
@rem
@rem  yarg startup script for Windows
@rem
@rem ##########################################################################

@rem Set local scope for the variables with windows NT shell
if "%OS%"=="Windows_NT" setlocal

@rem Add default JVM options here. You can also use JAVA_OPTS and YARG_OPTS to pass JVM options to this script.
set DEFAULT_JVM_OPTS=

set DIRNAME=%~dp0

if exist "%DIRNAME%..\..\java" (
  pushd "%DIRNAME%..\..\java"
  for /F %%x in ('cd') do (set JAVA_HOME="%%x")
  popd
)
@echo JAVA_HOME=%JAVA_HOME

if "%DIRNAME%" == "" set DIRNAME=.
set APP_BASE_NAME=%~n0
set APP_HOME=%DIRNAME%..

@rem Find java.exe
if defined JAVA_HOME goto findJavaFromJavaHome

set JAVA_EXE=java.exe
%JAVA_EXE% -version >NUL 2>&1
if "%ERRORLEVEL%" == "0" goto init

echo.
echo ERROR: JAVA_HOME is not set and no 'java' command could be found in your PATH.
echo.
echo Please set the JAVA_HOME variable in your environment to match the
echo location of your Java installation.

goto fail

:findJavaFromJavaHome
set JAVA_HOME=%JAVA_HOME:"=%
set JAVA_EXE=%JAVA_HOME%/bin/java.exe

if exist "%JAVA_EXE%" goto init

echo.
echo ERROR: JAVA_HOME is set to an invalid directory: %JAVA_HOME%
echo.
echo Please set the JAVA_HOME variable in your environment to match the
echo location of your Java installation.

goto fail

:init
@rem Get command-line arguments, handling Windowz variants

if not "%OS%" == "Windows_NT" goto win9xME_args
if "%@eval[2+2]" == "4" goto 4NT_args

:win9xME_args
@rem Slurp the command line arguments.
set CMD_LINE_ARGS=
set _SKIP=2

:win9xME_args_slurp
if "x%~1" == "x" goto execute

set CMD_LINE_ARGS=%*
goto execute

:4NT_args
@rem Get arguments from the 4NT Shell from JP Software
set CMD_LINE_ARGS=%$

:execute
@rem Setup the command line

set CLASSPATH=%APP_HOME%\lib\yarg-1.0-SNAPSHOT.jar;%APP_HOME%\lib\guava-17.0.jar;%APP_HOME%\lib\yarg-api-1.0-SNAPSHOT.jar;%APP_HOME%\lib\commons-cli-1.2.jar;%APP_HOME%\lib\commons-logging-1.1.1.jar;%APP_HOME%\lib\commons-lang-2.6.jar;%APP_HOME%\lib\commons-collections-3.2.1.jar;%APP_HOME%\lib\commons-io-1.4.jar;%APP_HOME%\lib\commons-dbcp-1.4.jar;%APP_HOME%\lib\dom4j-1.6.1.jar;%APP_HOME%\lib\slf4j-log4j12-1.7.5.jar;%APP_HOME%\lib\groovy-all-2.1.6.jar;%APP_HOME%\lib\antlr-2.7.7.jar;%APP_HOME%\lib\asm-3.3.1.jar;%APP_HOME%\lib\freemarker-2.3.16.jar;%APP_HOME%\lib\juh-3.0.0.jar;%APP_HOME%\lib\ridl-3.0.0.jar;%APP_HOME%\lib\unoil-3.0.0.jar;%APP_HOME%\lib\avalon-framework-api-4.3.1.jar;%APP_HOME%\lib\avalon-framework-impl-4.3.1.jar;%APP_HOME%\lib\xmlgraphics-commons-1.5.jar;%APP_HOME%\lib\jaxb-svg11-1.0.2.jar;%APP_HOME%\lib\jaxb-xslfo-1.0.1.jar;%APP_HOME%\lib\jaxb-xmldsig-core-1.0.0.jar;%APP_HOME%\lib\batik-bridge-1.7.jar;%APP_HOME%\lib\batik-svggen-1.7.jar;%APP_HOME%\lib\batik-awt-util-1.7.jar;%APP_HOME%\lib\batik-css-1.7.jar;%APP_HOME%\lib\xalan-2.7.1.jar;%APP_HOME%\lib\serializer-2.7.1.jar;%APP_HOME%\lib\itext-2.1.7.jar;%APP_HOME%\lib\poi-3.9.20130515.jar;%APP_HOME%\lib\poi-scratchpad-3.9.jar;%APP_HOME%\lib\commons-codec-1.6.jar;%APP_HOME%\lib\flying-saucer-core-9.0.6.jar;%APP_HOME%\lib\flying-saucer-pdf-9.0.6.jar;%APP_HOME%\lib\docx4j-3.2.0.jar;%APP_HOME%\lib\docx4j-ImportXHTML-3.2.0.jar;%APP_HOME%\lib\json-path-2.1.0.jar;%APP_HOME%\lib\commons-pool-1.5.4.jar;%APP_HOME%\lib\jurt-3.0.0.jar;%APP_HOME%\lib\batik-svg-dom-1.7.jar;%APP_HOME%\lib\batik-gvt-1.7.jar;%APP_HOME%\lib\batik-transcoder-1.7.jar;%APP_HOME%\lib\batik-extension-1.7.jar;%APP_HOME%\lib\batik-ext-1.7.jar;%APP_HOME%\lib\batik-anim-1.7.jar;%APP_HOME%\lib\batik-dom-1.7.jar;%APP_HOME%\lib\batik-parser-1.7.jar;%APP_HOME%\lib\batik-script-1.7.jar;%APP_HOME%\lib\batik-util-1.7.jar;%APP_HOME%\lib\batik-xml-1.7.jar;%APP_HOME%\lib\xml-apis-ext-1.3.04.jar;%APP_HOME%\lib\mbassador-1.1.10.jar;%APP_HOME%\lib\wmf2svg-0.9.0.jar;%APP_HOME%\lib\xhtmlrenderer-3.0.0.jar;%APP_HOME%\lib\json-smart-2.2.jar;%APP_HOME%\lib\batik-js-1.7.jar;%APP_HOME%\lib\accessors-smart-1.1.jar;%APP_HOME%\lib\asm-5.0.3.jar;%APP_HOME%\lib\log4j-1.2.17.jar;%APP_HOME%\lib\xml-apis-1.3.04.jar;%APP_HOME%\lib\fop-1.1.jar;%APP_HOME%\lib\poi-3.9.jar;%APP_HOME%\lib\antlr-runtime-3.3.jar;%APP_HOME%\lib\stringtemplate-3.2.1.jar;%APP_HOME%\lib\slf4j-api-1.7.13.jar;%APP_HOME%\lib\hsqldb.jar;%APP_HOME%\lib\postgresql-9.4.1208.jre6.jar


@rem Execute yarg
"%JAVA_EXE%" %DEFAULT_JVM_OPTS% %JAVA_OPTS% %YARG_OPTS%  -classpath "%CLASSPATH%" com.haulmont.yarg.console.ConsoleRunner %CMD_LINE_ARGS%

:end
@rem End local scope for the variables with windows NT shell
if "%ERRORLEVEL%"=="0" goto mainEnd

:fail
rem Set variable YARG_EXIT_CONSOLE if you need the _script_ return code instead of
rem the _cmd.exe /c_ return code!
if  not "" == "%YARG_EXIT_CONSOLE%" exit 1
exit /b 1

:mainEnd
if "%OS%"=="Windows_NT" endlocal

:omega
