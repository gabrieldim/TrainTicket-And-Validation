<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Zadacha2.aspx.cs" Inherits="LaboratoriskaVezhba2.Zadacha2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">

       <div>
        <div style="float:left  ; padding-right:80px" >




            Име:<asp:TextBox ID="Ime" runat="server"></asp:TextBox>
            <br />
            Презиме:<asp:TextBox ID="Prezime" runat="server"></asp:TextBox>
            <br />
            Финки ID:<asp:TextBox ID="FinkiID" runat="server"></asp:TextBox>  @finki.ukim.mk
            <asp:RegularExpressionValidator 
                ID="RegularExpressionValidator2" 
                runat="server" 
                ErrorMessage="Невалидна е-маил адреса!" 
                ControlToValidate="FinkiID" 
                ValidationExpression="[A-Z0-9]*(_(\d{2})){0,1}[A-Z0-9]*">

            </asp:RegularExpressionValidator>

            <br />
             <asp:RequiredFieldValidator 
                ID="RequiredFieldValidator2" Display="None"
                runat="server" 
                ErrorMessage="Внесете име!" 
                ControlToValidate="Ime" 
                 ForeColor="#FF3300">

            </asp:RequiredFieldValidator>
           
            
            <asp:RequiredFieldValidator 
                ID="RequiredFieldValidator3" 
                runat="server" ForeColor="#FF3300" Display="None"
                ErrorMessage="Внесете презиме!"  
                ControlToValidate="Prezime">

            </asp:RequiredFieldValidator>
           
            
            <asp:RequiredFieldValidator 
                ID="RequiredFieldValidator4" ForeColor="#FF3300"
                runat="server" Display="None"
                ErrorMessage="Внесете валиден е-маил!" 
                ControlToValidate="FinkiID">

            </asp:RequiredFieldValidator>

            <br />
            Лозинка:<asp:TextBox ID="Lozinka" runat="server" TextMode="Password"></asp:TextBox>
            <br />
            Потврда:<asp:TextBox ID="Potvrda" runat="server" TextMode="Password"></asp:TextBox>
            <br />
            <asp:RequiredFieldValidator 
                ID="RequiredFieldValidator1" 
                runat="server" ForeColor="#FF3300" Display="None"
                ErrorMessage="Внесете податоци за лозинка!" 
                ControlToValidate="Lozinka">

            </asp:RequiredFieldValidator>
            <asp:CompareValidator 
                ID="CompareValidator1" 
                runat="server" ForeColor="#FF3300"
                ErrorMessage="Лозинките не се софпаѓаат!" 
                ControlToCompare="Lozinka" Display="None"
                ControlToValidate="Potvrda">

            </asp:CompareValidator>
            
            

            <br />
            Адреса: <asp:TextBox ID="Adresa" runat="server"></asp:TextBox>
            <br />
            Тел:<asp:TextBox ID="Telefon" runat="server"></asp:TextBox>
            <asp:RegularExpressionValidator 
                ID="RegularExpressionValidator1" 
                runat="server" 
                ErrorMessage="Невалиден телефонски број!" 
                ValidationExpression="^[+][3][8][9]\s[0-9]{1,2}\s[0-9]{3,4}\s[0-9]{3}" 
                ControlToValidate="Telefon">


            </asp:RegularExpressionValidator>




            <br />
            <asp:RequiredFieldValidator 
                ID="RequiredFieldValidator5" ForeColor="#FF3300"
                runat="server" Display="None"
                ErrorMessage="Внесете адреса!" 
                ControlToValidate="Adresa">

            </asp:RequiredFieldValidator>
            
            
            
            <asp:RequiredFieldValidator 
                ID="RequiredFieldValidator6" 
                runat="server" ForeColor="#FF3300"
                ErrorMessage="Внесете телефонски број!" 
                ControlToValidate="Telefon" Display="None">

            </asp:RequiredFieldValidator>
            <br />
          
            
            Пол: <asp:RadioButtonList ID="zaPol" runat="server" ControlToValidate="zaPol">
                <asp:ListItem>М</asp:ListItem>
                <asp:ListItem>Ж</asp:ListItem>
            </asp:RadioButtonList>
            <asp:RequiredFieldValidator
                ID="RequiredFieldValidator7" 
                runat="server"  Display="None"
                ErrorMessage="Внесете пол!" 
                ControlToValidate="zaPol">

            </asp:RequiredFieldValidator>



            <asp:Calendar ID="kk" runat="server"></asp:Calendar>
           
            <br />
            <br />
            <br />
            Занимање:
            <br />
            <asp:DropDownList ID="Zanimanja" runat="server">
               <asp:ListItem>занимање</asp:ListItem>
                <asp:ListItem>Programer</asp:ListItem>
                <asp:ListItem>Novinar</asp:ListItem>
                <asp:ListItem>Profesor</asp:ListItem>
                <asp:ListItem>Glumec</asp:ListItem>
            </asp:DropDownList>
            <br />
            <asp:RequiredFieldValidator 
                ID="RequiredFieldValidator9" 
                runat="server" 
                ErrorMessage="Невалидна вредност за занимањето!" 
                InitialValue="занимање" 
                ControlToValidate="Zanimanja">

            </asp:RequiredFieldValidator>

             Години на вршење на оваа дејност:
            <br />
            <asp:TextBox ID="Iskustvo" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator 
                ID="RequiredFieldValidator8" 
                runat="server" 
                ErrorMessage="Невалидна вредност за години!" 
                ControlToValidate="Iskustvo">

            </asp:RequiredFieldValidator>

            <br />
            <asp:Button ID="Kopche" runat="server" Text="Kreiraj" OnClick="Kopche_Click" />
            <br />
            <asp:Label ID="Uspeh" Visible="false"   runat="server" Text="Успешно се внесени податоците!" ForeColor="Lime"></asp:Label>
            <asp:Label ID="Neuspeh" runat="server" Visible="false" ForeColor="Red" Text="Неуспешно се внесени податоците!"></asp:Label>

            <br />
           
            <br />
            
        </div>

        <div>   
            <asp:ValidationSummary ID="ValidationSummary1" runat="server" ShowMessageBox="True" ForeColor="Red" />
        </div>
    </div>

    </form>
</body>
</html>
