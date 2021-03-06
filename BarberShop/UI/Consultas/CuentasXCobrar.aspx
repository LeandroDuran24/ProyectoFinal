﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Base.Master" AutoEventWireup="true" CodeBehind="CuentasXCobrar.aspx.cs" Inherits="BarberShop.UI.Consultas.CuentasXCobrar" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">


    <h1 class=" text-center">Cuentas por Cobrar <span class="glyphicon glyphicon-file"></span></h1>

    <div class="container-fluid">
        <div class="col-lg-12 col-md-6  col-sm-8 col-xs-12">

            <div class="text-center">
                <asp:Button ID="ButtonBuscar" CssClass="btn btn-danger" runat="server" Text="Filtrar" OnClick="ButtonBuscar_Click" />
            &nbsp;<asp:Button ID="ButtonImprimir" CssClass="btn btn-danger" runat="server" Text="Imprimir" OnClick="ButtonImprimir_Click"  />
            </div>

            <div class="text-center align-content-center">
                <div style="overflow: auto; width: 1100px; height: 315px;">


                    <asp:GridView ID="GridView1" runat="server" CellPadding="0" ClientIDMode="Static" ForeColor="#333333" Width="1100px" ShowFooter="True" CaptionAlign="Left" Height="100px" HorizontalAlign="Center" PageIndex="2" PageSize="2" AutoGenerateSelectButton="True" OnSelectedIndexChanging="GridView1_SelectedIndexChanging">
                        <AlternatingRowStyle BackColor="White" Font-Bold="False" />
                        <EditRowStyle BackColor="#2461BF" HorizontalAlign="Center" VerticalAlign="Middle" />
                        <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                        <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" BorderStyle="Solid" Font-Italic="True" Font-Size="12pt" HorizontalAlign="Center" VerticalAlign="Middle" />
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
        </div>
    </div>
 <br />
    <br />
</asp:Content>
