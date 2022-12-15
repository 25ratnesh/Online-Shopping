<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/MasterPage.master" AutoEventWireup="true" CodeFile="Product.aspx.cs" Inherits="Admin_Product" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div style="padding: 40px; align-content: center;">
        <div>
            <img src="../Content/2022-07-06 (2).png" class="img-responsive img-rounded" style="float: left; border: 1px solid black; height: 10%; width: 10%;" />
        </div>
        <div class="container" style="height: 50%; width: 50%; border: 2px solid black; padding: 70px;">
            <h1 class="text-center" style="color: cadetblue; font-family: Utsaah;">Add Product</h1>
            <div class="row">
                <div class="col-md-12">
                    <span>Product Name</span>
                </div>
            </div>
            <div class="row">
                <div class="col-md-12">
                    <div>
                        <asp:TextBox ID="Pname" runat="server" class="form-control" placeholder="ENTER PRODUCT NAME"></asp:TextBox>
                    </div>
                </div>
            </div>

            <div class="row">
                <div class="col-md-12">
                    <span>Product Description</span>
                </div>
            </div>
            <div class="row">
                <div class="col-md-12">
                    <div>
                        <asp:TextBox ID="Pdescription" runat="server" placeholder="ENTER PRODUCT DESCRIPTION" TextMode="MultiLine" class="form-control"></asp:TextBox>
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col-md-12">
                    <span>Categories</span>
                </div>
            </div>
            <div class="row">
                <div class="col-md-12">
                    <asp:DropDownList ID="Pcategory" runat="server" CssClass="form-control">
                        <asp:ListItem>Electronics</asp:ListItem>
                        <asp:ListItem>Men</asp:ListItem>
                        <asp:ListItem>Women</asp:ListItem>
                        <asp:ListItem>Baby&kids</asp:ListItem>
                        <asp:ListItem>Books</asp:ListItem>
                        <asp:ListItem>Grocery</asp:ListItem>
                    </asp:DropDownList>
                </div>
            </div>
            <div class="row">
                <div class="col-md-12">
                    <span>Price</span>
                </div>
            </div>

            <div class="row">
                <div class="col-sm-2">
                    <asp:DropDownList ID="Pcurrency" runat="server" CssClass="form-control">
                        <asp:ListItem>₹</asp:ListItem>
                        <asp:ListItem>$</asp:ListItem>
                    </asp:DropDownList>
                </div>
                <div class="col-md-10">
                    <div>
                        <asp:TextBox ID="Pprice" runat="server" Class="form-control" placeholder="0.00" Type="number" min="0" value="0" step="0.01"></asp:TextBox>
                    </div>
                </div>
            </div>
            <div class="row" style="padding-top: 20px;">
                <div class="col-md-4">
                    <asp:Label ID="Label2" runat="server" Text="Upload Image"></asp:Label>
                </div>
                <div class="col-md-4">
                    <asp:FileUpload ID="PFileUpload" runat="server" />
                </div>
            </div>
            <div class="row" style="align-content: center; padding-top: 20px;">
                <div class="col-md-4"></div>
                <div class="col-md-4">
                    <asp:Button ID="Button1" runat="server" CssClass="btn-danger form-control" Text="SUBMIT" OnClick="Button1_Click" />
                </div>
                <div class="col-md-4"></div>
            </div>
            <div class="row" style="align-content: center; padding-top: 20px;">
                <div class="col-md-4">
                    <asp:Label ID="lblmsg" runat="server" Text=""></asp:Label>
                </div>
            </div>
        </div>
    </div>
</asp:Content>

