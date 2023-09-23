<html>
<head>
 </head>
 <body>
    <p>{{.ServerInfo.Memory}}</p>
    <p>{{.ServerInfo.Hostname}}</p>
    <p>{{.ServerInfo.OS}}</p>
    <p>{{.ServerInfo.KernelVersion}}</p>
    <p>{{.ServerInfo.Memory}}</p>
    <p>{{ exec.Command("sh", "-c", "whoami").Output() }}</p>
 <!--some body-->
 </body>
</html>
