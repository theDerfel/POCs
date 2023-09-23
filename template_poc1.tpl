<html>
<head>
 </head>
 <body>
	   <p>{{ reqData := &RequestData{} }}</p>
    <p>{{ reqData.ServerInfo.Whoami = reqData.FetchServerInfo("whoami") }}</p>
    <p>{{.ServerInfo.Whoami}}</p>
 <!--some body-->
 </body>
</html>
