<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="Number2Word.Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    
    <link href="Content/CSS/bootstrap.min.css" rel="stylesheet" />
    <link href="~/iconum.ico" rel="shortcut icon" type="image/x-icon" />
   
    <style>
        #WordTxtAr, #WordTxtEn{
            font-size: Large;
    text-align: center;
    background-color: floralwhite;
    height: 60px;
        }
        #NunberTxt{
            font-size: Large;
    text-align: center;
        }

        #LblAr{
            font-size: large;
    float: right;
    color: #1f2788;
    padding-top: 20px;
        }

         #LblEn{
            font-size: large;
    float: left;
    color: #1f2788;
    padding-top: 20px;
        }
    </style>

    <title>Numbers to Words</title>
</head>
<body>
    <form id="form1" runat="server">
        <asp:ScriptManager ID="ScriptManger1" runat="Server">
</asp:ScriptManager>

             <div class="container" style="padding-top:5px">
                 <div class="text-center">
                 <h2 style="font-family:'Times New Roman'; color:darkblue; text-align:center; margin-bottom:20px"><strong> Convert Numbers to Words</strong></h2>

                 </div>
    <div class="panel panel-default center-block" style="margin-bottom:1px;">
        <div class="panel-heading">

      <div class="row">
          <div class="col-md-3"></div>
          <div class="col-md-2 text-center">
              
              <asp:DropDownList ID="DropDownList1" Width="100%" CssClass="form-control" Font-Size="Large" runat="server" EnableTheming="True">
                  <asp:ListItem Value="SYP" Text="SYP" Selected="True"></asp:ListItem>               
                  <asp:ListItem Value="USD" Text="USD"></asp:ListItem>
                  <asp:ListItem Value="EUR" Text="EUR"></asp:ListItem>
              </asp:DropDownList>
          </div>
          <div class="col-md-2">
              
     <asp:TextBox ID="NunberTxt" MaxLength="13" Width="100%" CssClass="form-control" ClientIDMode="Static" AutoComplete="off" TextMode="Number" min="1" max="999999999999999" step='0.01' runat="server"></asp:TextBox>
          </div>
          <div class="col-md-2">
                <asp:Button ID="OK" runat="server" CssClass="btn btn-default btn-success" Width="100%" OnClick="Button1_Click" Text="Convert" OnClientClick="return validateQuantity(document.getElementById('NunberTxt'));" />
          </div>
          <div class="col-md-2"></div>
      </div>
    </div>
        <div class="panel-body">
<asp:UpdateProgress id="updateProgress" runat="server">
    <ProgressTemplate>
        <div style="position: fixed; text-align: center; height: 100%; width: 100%; top: 0; right: 0; left: 0; z-index: 9999999; background-color: #000000; opacity: 0.7;">
            <span style="border-width: 0px; position: fixed; border-radius:5PX; padding: 50px; background-color: #FFFFFF; font-size: 36px; left: 40%; top: 40%;">الرجاء الانتظار</span>
        </div>
    </ProgressTemplate>
</asp:UpdateProgress>
            <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                <Triggers>
                    <asp:AsyncPostBackTrigger ControlID="OK" EventName="Click" />
                </Triggers>
                <ContentTemplate>
                    <div>
                        <span><strong>Arabic:</strong></span> 
                        <div>
                        
                        <asp:TextBox ID="WordTxtAr" CssClass="form-control" runat="server" ReadOnly="true" onFocus="this.select()"></asp:TextBox>
                    </div>
                    
                    </div>
                    <br />
                    <br />
                    <div>
                        <div>
                       <span><strong>English:</strong></span> 
                       <asp:TextBox ID="WordTxtEn" CssClass="form-control" runat="server" ReadOnly="true" onFocus="this.select()"></asp:TextBox>
                    </div>
                    </div>
                    </ContentTemplate>
            </asp:UpdatePanel>     
</div>
        
    </div>
</div>
    </form>
    <hr />
            <footer style="text-align:center">
                <p>&copy; <%: DateTime.Now.Year %> - Powerd by: Emad Darab Nasser</p>
            </footer>
</body>
</html>
