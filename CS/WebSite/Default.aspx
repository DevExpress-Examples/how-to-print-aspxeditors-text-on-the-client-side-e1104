<%@ Page Language="C#" AutoEventWireup="true"  CodeFile="Default.aspx.cs" Inherits="_Default" %>
<%@ Register Assembly="DevExpress.Web.v13.1" Namespace="DevExpress.Web.ASPxEditors"
    TagPrefix="dxe" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>Untitled Page</title>
</head>
<body>
    <form id="form1" runat="server">
        <script type="text/javascript">
            function Print(html) {
                var win = window.open('','popup','toolbar=no,menubar=no,width=1,height=1');
                self.focus();
                win.document.open();
                win.document.write('<head><style></style></head><body>' + html + '<style></style></head><body>');
                win.document.close();
                win.print();
                win.close();
            }
        </script>
        <dxe:ASPxMemo ID="ASPxMemo1" runat="server" Height="71px" Width="170px" ClientInstanceName="clientMemo">
        </dxe:ASPxMemo>
        <br />
        <dxe:ASPxButton ID="ASPxButton1" runat="server" AutoPostBack="False" Text="Print">
            <ClientSideEvents Click="function(s, e) { Print(clientMemo.GetText()); }" />
        </dxe:ASPxButton>
    </form>
</body>
</html>
