<%@ WebHandler Language="C#" Class="SearchHandler" %>

using System;
using System.Web;

public class SearchHandler : IHttpHandler {
    
    public void ProcessRequest (HttpContext context) {

        context.Response.ContentType = "application/json";
        //var bllroute = new BLL.BLLRoute();
        //var routes = bllroute.GetRoute();
        //var json = new System.Runtime.Serialization.Json.DataContractJsonSerializer(routes.GetType());
        //json.WriteObject(context.Response.OutputStream, routes);
    }
 
    public bool IsReusable {
        get {
            return false;
        }
    }

}