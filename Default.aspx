<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <div>

        <div style="font-size:x-large" align="center" > Switch Info Management</div>
         <br />
        <div style="font-size:medium">
        <table class="nav-justified">
                <tr>
                    <td style="width: 365px">&nbsp;</td>
                    <td style="width: 238px">ID</td>
                    <td>
                        <asp:TextBox ID="TextBox6" runat="server" Width="414px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td style="width: 365px">&nbsp;</td>
                    <td style="width: 238px">NAME</td>
                    <td>
                        <asp:TextBox ID="TextBox7" runat="server" Width="414px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td style="width: 365px">&nbsp;</td>
                    <td style="width: 238px">MAKE</td>
                    <td>
                        <asp:TextBox ID="TextBox8" runat="server" Width="414px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td style="width: 365px">&nbsp;</td>
                    <td style="width: 238px">MODEL</td>
                    <td>
                        <asp:TextBox ID="TextBox9" runat="server" Width="414px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td style="width: 365px">&nbsp;</td>
                    <td style="width: 238px">LEVEL</td>
                    <td>
                        <asp:DropDownList ID="DropDownList1" runat="server" Width="186px">
                            <asp:ListItem Enabled="true" Text="Select level" Value="-1"></asp:ListItem>
                            <asp:ListItem Text="level 1" Value="1"></asp:ListItem>
                            <asp:ListItem Text="level 2" Value="2"></asp:ListItem>
                            <asp:ListItem Text="level 3" Value="3"></asp:ListItem>
                            <asp:ListItem Text="level 4" Value="4"></asp:ListItem>
                            <asp:ListItem Text="level 5" Value="5"></asp:ListItem>
                            <asp:ListItem Text="level 6" Value="6"></asp:ListItem>
                            <asp:ListItem Text="level 7" Value="7"></asp:ListItem>
                            <asp:ListItem Text="level 8" Value="8"></asp:ListItem>
                            <asp:ListItem Text="level 9" Value="9"></asp:ListItem>
                            <asp:ListItem Text="level 10" Value="10"></asp:ListItem>
                        </asp:DropDownList>
                    </td>
                </tr>
                <tr>
                    <td style="width: 365px">&nbsp;</td>
                    <td style="width: 238px">PARENT-ID</td>
                    <td>
                        <asp:DropDownList ID="DropDownList2" runat="server" Width="186px">
                        </asp:DropDownList>
                    </td>
                </tr>
                <tr>
                    <td style="width: 365px">&nbsp;</td>
                    <td style="width: 238px">STATUS</td>
                    <td>
                        <asp:CheckBox ID="CheckBox1" runat="server" />
                    </td>
                </tr>
                <tr>
                    <td style="width: 365px; height: 43px;"></td>
                    <td style="width: 238px; height: 43px;">IP</td>
                    <td style="height: 43px">
                        <asp:TextBox ID="TextBox5" runat="server" Width="414px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td style="width: 365px; height: 43px;">&nbsp;</td>
                    <td style="width: 238px; height: 43px;">SEQ</td>
                    <td style="height: 43px">
                        <asp:TextBox ID="TextBox10" runat="server" Width="412px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td style="width: 365px">&nbsp;</td>
                    <td style="width: 238px">&nbsp;</td>
                    <td>
                        <asp:Button ID="Button1" runat="server" BackColor="#CC00CC" Font-Bold="True" OnClick="Button1_Click" Text="INSERT" Width="142px" />
                    &nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:Button ID="Button2" runat="server" BackColor="#99FFCC" BorderColor="Black" Font-Bold="True" OnClick="Button2_Click" Text="UPDATE" Width="140px" />
&nbsp;&nbsp;&nbsp;
                        <asp:Button ID="Button3" runat="server" BackColor="#6600FF" BorderColor="Black" Font-Bold="True" OnClick="Button3_Click" Text="DELETE" Width="129px" />
&nbsp;&nbsp;&nbsp;
                        <asp:Button ID="Button4" runat="server" BackColor="#FFFFCC" Font-Bold="True" OnClick="Button4_Click" Text="CLEAR" Width="124px" />
                    </td>
                </tr>
                <tr>
                    <td style="width: 365px">&nbsp;</td>
                    <td style="width: 238px">&nbsp;</td>
                    <td>
                        &nbsp;</td>
                </tr>
            </table>
            <div style="text-align:center">
                <asp:Button ID="btnGoToDisplayPage" runat="server" Text="Go to Display Page" OnClick="btnGoToDisplayPage_Click" BackColor="#CC00CC" Font-Bold="True" />
                <br />
                <br />
                <asp:Button ID="Button5" runat="server" BackColor="#CC00CC" Font-Bold="True" OnClick="Button5_Click" Text="Go to Main Page" Width="324px" />
            </div>

            </div>
           </div>
       

    
</asp:Content>
