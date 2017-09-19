FROM nanoserver/iis
RUN mkdir C:\site

RUN powershell -NoProfile -Command \
    Import-module IISAdministration; \
    New-IISSite -Name "Site" -PhysicalPath C:\site -BindingInformation "*:8080:"

ADD index.html \site
ADD ServiceMonitor.exe C:\\ServiceMonitor.exe

EXPOSE 8080

ENTRYPOINT ["C:\\ServiceMonitor.exe", "w3svc"]
