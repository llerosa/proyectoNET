using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ProyectoWeb.MiProyecto
{
    public partial class PideHora : System.Web.UI.Page
    {
        contextoTallerDataContext contexto = new contextoTallerDataContext();
        
       
        struct par { public string hora; public bool b;};
        
        par[] lista_horas = new par[10];
        

        
        private void inicia_struct(){
            lista_horas[0].hora = "8:00"; lista_horas[0].b = false; //lista_horas.Add(p);
            lista_horas[1].hora = "9:00"; lista_horas[1].b = false; //lista_horas.Add(p);
            lista_horas[2].hora = "10:00"; lista_horas[2].b = false; //lista_horas.Add(p);
            lista_horas[3].hora = "11:00"; lista_horas[3].b = false; //lista_horas.Add(p);
            lista_horas[4].hora = "12:00"; lista_horas[4].b = false; //lista_horas.Add(p);
            lista_horas[5].hora = "13:00"; lista_horas[5].b = false; //lista_horas.Add(p);

            lista_horas[6].hora = "16:00"; lista_horas[6].b = false; //lista_horas.Add(p);
            lista_horas[7].hora = "17:00"; lista_horas[7].b = false; //lista_horas.Add(p);
            lista_horas[8].hora = "18:00"; lista_horas[8].b = false; //lista_horas.Add(p);
            lista_horas[9].hora = "19:00"; lista_horas[9].b = false; //lista_horas.Add(p);
#region sobra 
         /*
         * p = new pareja(); p.hora = "9:30"; p.b = false; lista_horas.Add(p);
         * p = new pareja(); p.hora = "10:30"; p.b = false; lista_horas.Add(p);
         * p = new pareja(); p.hora = "11:30"; p.b = false; lista_horas.Add(p);
         *  p = new pareja(); p.hora = "12:30"; p.b = false; lista_horas.Add(p);
         *  p = new pareja(); p.hora = "15:30"; p.b = false; lista_horas.Add(p);
         *  p = new pareja(); p.hora = "16:30"; p.b = false; lista_horas.Add(p);
         * p = new pareja(); p.hora = "17:30"; p.b = false; lista_horas.Add(p);
         * p = new pareja(); p.hora = "18:30"; p.b = false; lista_horas.Add(p);
         */
#endregion
        }
        
        protected void Page_Load(object sender, EventArgs e)
        {
            inicia_struct();
            listahoras.Visible = false;
        }

        protected void Calendar1_SelectionChanged(object sender, EventArgs e)
        {
            
            
        }

        private bool son_iguales(string a, string b)
        {
            bool lo_son = true;
            if (a[0] != b[0]) lo_son = false;
            else
            {
                for (int i = 0; i < a.Length; ++i)
                {
                    if (a[i] != b[i]) lo_son = false;
                }
            }
            return lo_son;
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
                listahoras.Visible = true;
                inicia_struct();
                var cons = from datos in contexto.HORASOCUPADAs
                           where datos.FECHA == Calendar1.SelectedDate.ToShortDateString()
                           select datos;
                foreach (var elem in cons)
                {
                    string s = elem.HORA;
                    bool encuentra = false;
                    for (int i = 0; i < 10 && !encuentra; ++i)
                    {
                        string comp1 = lista_horas[i].hora;
                        bool res = son_iguales(comp1, s);
                        if (res == true)
                        {
                            lista_horas[i].b = true;
                            encuentra = true;
                        }
                    }
                }
                listahoras.Items.Clear();
                for (int i = 0; i < 10; ++i)
                {
                    if (!lista_horas[i].b) listahoras.Items.Add(lista_horas[i].hora);
                }
                
        }

        protected void listahoras_SelectedIndexChanged(object sender, EventArgs e)
        {
        }

        protected void Solicita_Click(object sender, EventArgs e)
        {
            string nombre = txtNombre.Text;
            string apellidos = txtApe.Text;
            string matricula = txtMat.Text;
            string dni = txtDNI.Text;
            string fecha = Calendar1.SelectedDate.ToShortDateString();
            string hora = this.listahoras.SelectedItem.ToString();
            contexto.INSERTA_CLIENTES(nombre, apellidos, matricula, dni, fecha, hora);   
        }
    }
}