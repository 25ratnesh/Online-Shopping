<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/MasterPage.master" AutoEventWireup="true" CodeFile="ProductList.aspx.cs" Inherits="Admin_ProductList" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="container" style="padding-top: 20px;">
        <asp:Label ID="Label1" runat="server" Text=""></asp:Label>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="false" OnRowDataBound="GridView1_RowDataBound" AllowPaging="True"
            Width="100%" CssClass="Gridview" HeaderStyle-BackColor="#7779AF" HeaderStyle-ForeColor="white" EnableModelValidation="True">
            <Columns>
                <asp:BoundField DataField="ProductID" HeaderText="Id" />
                <asp:BoundField DataField="ProductName" HeaderText="Name" />
                <asp:BoundField DataField="ProductDescription" HeaderText="Description" />
                <asp:BoundField DataField="ProductPrice" HeaderText="Price" />
                <asp:TemplateField ItemStyle-Height="50px" ItemStyle-Width="50px" HeaderText="Image">
                    <ItemTemplate>
                        <asp:Image runat="server" ID="img1" Width="200" Height="200" BorderColor="SteelBlue" BorderStyle="Solid" />
                    </ItemTemplate>
                </asp:TemplateField>
            </Columns>
        </asp:GridView>
    </div>
</asp:Content>

