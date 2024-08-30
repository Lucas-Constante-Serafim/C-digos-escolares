using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.IO;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace formulario
{
    public partial class Form1 : Form
    {
        public Form1()
        {
            InitializeComponent();
        }

        private void Form1_Load(object sender, EventArgs e)
        {

        }

        private void button1_Click(object sender, EventArgs e)
        {
            this.Close();
        }

        private void comboBox1_SelectedIndexChanged(object sender, EventArgs e)
        {
            comboBox2.Text = string.Empty;

            if (comboBox1.Text == "Ferrari")
            {
                comboBox2.Items.Clear();
                comboBox2.Items.Add("SF90");
                comboBox2.Items.Add("SP-8");

            }

            else if (comboBox1.Text == "BMW")
            {
                comboBox2.Items.Clear();
                comboBox2.Items.Add("BMW-iX3");
                comboBox2.Items.Add("BMW");

            }

            else if (comboBox1.Text == "Bentley")
            {
                comboBox2.Items.Clear();
                comboBox2.Items.Add("Bentley Continental GT");
                comboBox2.Items.Add("Bentley flying spur");

            }

            else if (comboBox1.Text == "Audi")
            {
                comboBox2.Items.Clear();
                comboBox2.Items.Add("A3 Sportback");
                comboBox2.Items.Add("Série M");

            }

            else if (comboBox1.Text == "Aston Martin")
            {
                comboBox2.Items.Clear();
                comboBox2.Items.Add("DB12");
                comboBox2.Items.Add("Valhalla");

            }
        }

        private void comboBox2_SelectedIndexChanged(object sender, EventArgs e)
        {
            string[] carros = Directory.GetFiles(@"C:\253_lucas\253ML\carros");
            foreach (string imagens in carros)
            {
                string[] separador = imagens.Split('\\');
                string[] fotos = separador[4].Split('.');


                if (comboBox2.Text == fotos[0])
                {
                    pictureBox3.ImageLocation = @"C:\253_lucas\253ML\carros\" + comboBox2.Text + ".jpg";
                    pictureBox3.SizeMode = PictureBoxSizeMode.StretchImage;
                }

            }
        }
    }
}
