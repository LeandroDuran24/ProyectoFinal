﻿using Entidades;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace BarberShop.UI.Consultas
{
    public partial class ReservacionCons : System.Web.UI.Page
    {
        public static List<Reservaciones> lista { get; set; }

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                lista = BLL.ReservacionesBLL.GetListTodo();
            }

        }

        public void SeleccionarCombo()
        {
            if (DropDownList1.SelectedIndex == 0)
            {
                lista = null;
            }

            else if (DropDownList1.SelectedIndex == 1)
            {
                if (TextBox1.Text == "")
                {
                    Utilidades.MostrarToastr(this, "Debes Insertar Nombre", "error", "error");
                    lista = null;
                }
                else
                {
                    int id = Convert.ToInt32(TextBox1.Text);
                    lista = BLL.ReservacionesBLL.GetList(p => p.idReservacion == id);
                }


            }

            else if (DropDownList1.SelectedIndex == 2)
            {

               

                if (desdeFecha.Text != "" && hastaFecha.Text != "")
                {
                    DateTime desde = Convert.ToDateTime(desdeFecha.Text);
                    DateTime hasta = Convert.ToDateTime(hastaFecha.Text);
                    if (desde <= hasta)
                    {
                        lista = BLL.ReservacionesBLL.GetList(p => p.fecha >= desde && p.fecha <= hasta);

                    }
                    else
                    {
                        Utilidades.MostrarToastr(this, "La Primera Fecha debe ser Menor que la Segunda Fecha", "error", "error");
                        lista = null;
                    }
                }
                else
                {
                    Utilidades.MostrarToastr(this, "Debes Insertar las Fechas", "error", "error");
                    lista = null;
                }



            }
            else if (DropDownList1.SelectedIndex == 3)
            {

                lista = BLL.ReservacionesBLL.GetListTodo();


            }
            GridView1.DataSource = lista.OrderBy(p => p.fecha).ToList();
            GridView1.DataBind();


        }



        protected void ButtonBuscar_Click(object sender, EventArgs e)
        {
            SeleccionarCombo();
        }

        protected void ButtonImprimir_Click(object sender, EventArgs e)
        {
            Response.Redirect("../Reportes/ReporteReservaciones.aspx");
        }
    }
}