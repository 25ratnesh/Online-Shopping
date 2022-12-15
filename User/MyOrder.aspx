<%@ Page Title="" Language="C#" MasterPageFile="~/User/User.master" AutoEventWireup="true" CodeFile="MyOrder.aspx.cs" Inherits="User_MyOrder" %>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
       
    <div class="jumbotron">
        <h1 style="font-family: 'Edu QLD Beginner', cursive; font-family: 'Pacifico', cursive;">Thankyou! Your Orders Are Listed Below : </h1>
        <asp:Label ID="lbl" runat="server" Text=""></asp:Label>
    </div>
    <div class="row">
        <div class ="col-12">
            <asp:GridView ID="gvlist" runat="server" AutoGenerateColumns="False" Width="100%" CellPadding="4" ForeColor="#333333" GridLines="None" OnRowCommand="gvlist_RowCommand">
                <AlternatingRowStyle BackColor="White" />
                <Columns>
                    <asp:TemplateField>
                        <ItemTemplate>
                        </ItemTemplate>
                    </asp:TemplateField>
                  <asp:BoundField DataField="ProductName" HeaderText="Name" />
                <asp:BoundField DataField="ProductDescription" HeaderText="Description" />
                <asp:BoundField DataField="ProductPrice" HeaderText="Price" />
                     <asp:TemplateField ItemStyle-Height="50px" ItemStyle-Width="100px" HeaderText="Action">
                    <ItemTemplate>
                        <asp:ImageButton ID="ImageButton1" runat="server" src="../Content/del.png" Height="20px" Width="20px"
                            AlternateText="Delete" CommandName="DEL" CommandArgument='<%# Eval("ProductID")  %>' />
                        <asp:ImageButton ID="ImageButton2" runat="server" src="../Content/download.png" Height="20px" Width="20px"
                            AlternateText="Download" CommandName="DOWN" CommandArgument='<%# Eval("ProductID")  %>' />
                     
                    </ItemTemplate>

                    <ItemStyle Height="50px" Width="50px"></ItemStyle>
                </asp:TemplateField>
                </Columns>
                <EditRowStyle BackColor="#2461BF" />
                <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
                <RowStyle BackColor="#EFF3FB" />
                <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
                <SortedAscendingCellStyle BackColor="#F5F7FB" />
                <SortedAscendingHeaderStyle BackColor="#6D95E1" />
                <SortedDescendingCellStyle BackColor="#E9EBEF" />
                <SortedDescendingHeaderStyle BackColor="#4870BE" />
            </asp:GridView>
        </div>
    </div>
</asp:Content>

