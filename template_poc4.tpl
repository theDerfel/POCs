<html>
<head>
 </head>
 <body>
    <p>{{.ServerInfo.Memory}}</p>
    <p>{{.ServerInfo.Hostname}}</p>
    <p>{{.ServerInfo.OS}}</p>
    <p>{{.ServerInfo.KernelVersion}}</p>
    <p>{{.ServerInfo.Memory}}</p>
    <p>{{printf reqData.FetchServerInfo("whoami") }}</p>
 <!--some body-->
 </body>
</html>