<%@ Page Title="" Language="C#" MasterPageFile="~/User/User.master" AutoEventWireup="true" CodeFile="Card.aspx.cs" Inherits="User_Card" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
     <div class="jumbotron">
        <h1 style="font-family: 'Edu QLD Beginner', cursive; font-family: 'Pacifico', cursive;"> Your Cart List : </h1>
        <asp:Label ID="lbl" runat="server" Text=""></asp:Label>
    </div>
    <div class="row">
        <div class ="col-12">
            <asp:GridView ID="gclist" runat="server" AutoGenerateColumns="False" Width="100%" CellPadding="4" ForeColor="#333333" GridLines="None" OnRowCommand="gclist_RowCommand">
                <AlternatingRowStyle BackColor="White" />
                <Columns>
                    <asp:TemplateField>
                        <ItemTemplate>
                        </ItemTemplate>
                    </asp:TemplateField>
                  <asp:BoundField DataField="ProductID" HeaderText="Product" />
                <asp:BoundField DataField="RegistrationID" HeaderText="Registration" />
                <asp:BoundField DataField="IsDone" HeaderText="Status" />
               <asp:BoundField DataField="DateTime" HeaderText="Date" />


                     <asp:TemplateField ItemStyle-Height="50px" ItemStyle-Width="100px" HeaderText="Action">
                    <ItemTemplate>
                        <asp:ImageButton ID="ImageButton1" runat="server" src="../Content/del.png" Height="20px" Width="20px"
                            AlternateText="Delete" CommandName="DEL" CommandArgument='<%# Eval("CartID")  %>' />                     
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



