<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="SachLapTrinh.Presentation_Layer.WebForm1" %>

<!DOCTYPE html>
<script runat="server">
   void Button1_Click(object sender, EventArgs e) {
      Response.Write("Postback!");
   }
</script>
<script>
    $(document).ready(function(){
        function body_Onload() {
            document.forms[0]['Button1'].value = Date();
        }
    });
</script>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <asp:Button  id="Button1" onclick="Button1_Click" runat="server" Font-Bold="True" Font-Names="Verdana"
             Font-Size="Larger"/>
    </div>
    </form>
</body>
</html>
