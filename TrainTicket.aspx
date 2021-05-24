<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Zadacha1.aspx.cs" Inherits="LaboratoriskaVezhba2.Zadacha1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div style="height: 55px">

            <div style="float:left ; padding-right:130px">


             <table style="width: 100%">
                <tr>
                  Име: <asp:TextBox ID="txtIme" runat="server"></asp:TextBox>
                    <br />
                </tr>
                <tr>
                  Презиме: <asp:TextBox ID="txtPrezime" runat="server"></asp:TextBox>
                    <br />
                </tr>
                <tr>
                  Од:   <asp:DropDownList ID="ddlOd" runat="server"></asp:DropDownList>
                    <br />
                </tr>
                <tr>
                  До:   <asp:DropDownList ID="ddlDo" runat="server"></asp:DropDownList>
                    <br />
                </tr>
                 <tr>
                     Датум на тргање:
                     <asp:DropDownList ID="ddlDen" runat="server"></asp:DropDownList>
                     <asp:DropDownList ID="ddlMesec" runat="server"></asp:DropDownList><br />
                     <asp:DropDownList ID="ddlGodina" runat="server"></asp:DropDownList>
                     <br />
                 </tr>
                 <tr>
                     Време на тргање: <asp:DropDownList ID="ddlVreme" runat="server"></asp:DropDownList>
                     <br />

                 </tr>
                 <tr>
                     Превозно средство:
                       <asp:ListBox ID="LstSredstvo" runat="server">
                           <asp:ListItem>Авион</asp:ListItem>
                           <asp:ListItem>Воз</asp:ListItem>
                       </asp:ListBox>
                        
                     <br />
                 </tr>
                 <tr>
                     Зона:
                       <asp:RadioButtonList ID="rblZona" runat="server">
                        <asp:ListItem>Пушачи</asp:ListItem>
                        <asp:ListItem>Непушачи</asp:ListItem>
                       </asp:RadioButtonList>
                 </tr>
                 <tr>
                     Класа:
                     <asp:RadioButtonList ID="rblKlasa" runat="server">
                     <asp:ListItem>Бизнис</asp:ListItem>
                    <asp:ListItem>Економска</asp:ListItem>
                    </asp:RadioButtonList>


                 </tr>
                 <tr>
                     Послуга:
                       <asp:CheckBoxList ID="cblPosluga" runat="server">
                         <asp:ListItem>Пијалок</asp:ListItem>
                        <asp:ListItem>Кафе</asp:ListItem>
                        <asp:ListItem>Оброк</asp:ListItem>
                     </asp:CheckBoxList>
                 </tr>
                 <tr>
                     <asp:Button ID="btnPodnesi" runat="server" Text="Button" OnClick="btnPodnesi_Click" />
            <br />
                 </tr>

              </table>
         </div>


            <div>
              
            <asp:Panel ID="pnlPanela1" runat="server">
                <br />
            <asp:Label ID="lblPatnik" runat="server" Text="Label"></asp:Label>
            <br />
            <asp:Label ID="lblPoraka" runat="server" Text="Label"></asp:Label>
            <br />
            <asp:Label ID="lblOd" runat="server" Text="Label"></asp:Label>
            <br />
            <asp:Label ID="lblDo" runat="server" Text="Label"></asp:Label>
            <br />
            <asp:Label ID="lblVreme" runat="server" Text="Label"></asp:Label>
            <br />
            <asp:Label ID="lblZona" runat="server" Text="Label"></asp:Label>
            <br />
            <asp:Label ID="lblKlasa" runat="server" Text="Label"></asp:Label>
            <br />
            <asp:Label ID="lblPosluga" runat="server" Text="Label"></asp:Label>
            <br />
            <asp:Image ID="imgSlika" runat="server" Width="230px" />
            <br />
            <asp:Label ID="lastLabel" runat="server" Text="Label"></asp:Label>
            </asp:Panel> 

                </div>

        </div>
    </form>
</body>
</html>
