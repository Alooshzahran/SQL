<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="page1.aspx.cs" Inherits="_14_12_read_and_write_to_data_base.page1" %>




<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta name="viewport" content="width=device-width, initial-scale=1">
 <link rel="stylesheet" href="bootstrap-5.2.2-dist/css/bootstrap.css">
       <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@3.3.7/dist/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">
    <script src="https://kit.fontawesome.com/a8b56cb52b.js" crossorigin="anonymous"></script>
 <style>
     table {width: 50%;}
     table,tr,td{border: solid 2px  black; border-collapse:collapse;}
 </style>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Label ID="Label1" runat="server" Text=""></asp:Label><asp:Label ID="Label2" runat="server" Text=""></asp:Label>
            <asp:Label ID="Label3" runat="server" Text="name"></asp:Label>
           
        <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
             <br />
            <br />
            <br />
        <br />
            <asp:FileUpload ID="FileUpload1" runat="server" />
<asp:Button ID="btnUpload" Text="Upload" runat="server" OnClick="UploadFile" />
<hr />
<asp:Image ID="Image1" runat="server" Height = "300" Width = "300" />
        </div>


<%--        --------------------------------------%>

       
         
        <br />
       <%-- <asp:Button ID="Button1" runat="server" Text="submit" OnClick="Button1_Click" />--%>
          <asp:Button ID="Button2" runat="server" Text="show" OnClick="Button2_Click" />
           <asp:Label ID="Label5" runat="server" Text=""></asp:Label>
    </form>
</body>
</html>
