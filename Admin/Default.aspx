<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/MasterPage.master" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="Admin_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">

    <div class="jumbotron">
        <div class="container">


            <h1 style="text-align: center">Add Product</h1>
            <div class="row">
                <div class="col-md-3">
                    <div class="form-group">
                        <span>Enter Product Name</span>
                    </div>
                </div>
                <div class="col-md-6">
                    <div class="form-group">
                        <asp:TextBox ID="Txtproduct" runat="server" CssClass="form-control" placeholder="Enter Product Name"></asp:TextBox>
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col-md-3">
                    <div class="form-group">
                        <span>Enter Product Description</span>
                    </div>
                </div>
                <div class="col-md-6">
                    <div class="form-group">
                        <asp:TextBox ID="Txtdescription" runat="server" CssClass="form-control" placeholder="Product Description" TextMode="MultiLine"></asp:TextBox>
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col-md-3">
                    <div class="form-group">
                        <span>Enter Price of the Product</span>
                    </div>
                </div>
                <div class="col-md-6">
                    <div class="form-group">
                        <asp:TextBox ID="Txtprice" runat="server" CssClass="form-control" placeholder="Price of the Product"></asp:TextBox>
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col-md-3">
                    <div class="form-group">
                        <span>Upload Product File</span>
                    </div>
                </div>
                <div class="col-md-6">
                    <div class="form-group">
                        <asp:FileUpload ID="fileupload" runat="server" CssClass="form-control" />
                    </div>
                    <center> <asp:Button ID="Button1" runat="server" Text="Submit Product Details" CssClass="btn-danger" OnClick="Button1_Click"/></center>
                </div>
            </div>
            <asp:Label ID="Labelproduct" runat="server" Text="label"></asp:Label>


            <div class="row">
                <div class="table table-responsive">
                    <asp:GridView ID="gvImages" runat="server" OnRowDataBound="gvImages_RowDataBound" AutoGenerateColumns="false" CssClass="table table-bordered table-responsive table-hover">
                        <Columns>
                            <asp:BoundField DataField="ProductID" HeaderText="Id" />
                            <asp:BoundField DataField="ProductName" HeaderText="Name" />
                            <asp:BoundField DataField="ProductDescription" HeaderText="Description" />
                            <asp:BoundField DataField="ProductPrice" HeaderText="Price" />
                            <asp:TemplateField HeaderText="images" ItemStyle-Height="50%" ItemStyle-Width="50%">
                                <ItemTemplate>
                                    <asp:Image ID="Img1" runat="server" Height="50%" Width="50%" />
                                </ItemTemplate>
                            </asp:TemplateField>
                        </Columns>
                    </asp:GridView>
                </div>
            </div>
        </div>
    </div>
</asp:Content>

