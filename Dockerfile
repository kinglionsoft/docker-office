FROM mcr.microsoft.com/windows/servercore:ltsc2019

# Copy setup.exe
COPY setup.exe C:/office/
COPY configuration-Office2019Enterprise.xml C:/office/

# Install Office
RUN C:/office/setup.exe /configure C:/office/configuration.xml

ENTRYPOINT powershell.exe