The current binaries are built on static libraries as monolithic executables.
ah.exe should be the only file required for Windows executions.  Compilation
was in an x64 Windows 10 environment.

The wxWidgets source is included alongside the ALH source, and can be compiled
with Visual Studio 2005 (other versions should be able to compile as well, but
it is only tested as indicated).  A dynamic wxWidgets library and dynamically-
linked executable are planned.

A python-enabled binary is also planned, and will require a separate install of
python.  Python can be downloaded from http://www.python.org.
