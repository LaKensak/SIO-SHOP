using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;
using static System.Windows.Forms.VisualStyles.VisualStyleElement;

namespace Form_SIO_SQL
{
    public partial class AjoutClient : Form
    {
        public AjoutClient()
        {
            InitializeComponent();
        }



        private void label1_Click(object sender, EventArgs e)
        {

        }

        private void textBox2_TextChanged(object sender, EventArgs e)
        {

        }

        private void textBox3_TextChanged(object sender, EventArgs e)
        {

        }

        private void textBox4_TextChanged(object sender, EventArgs e)
        {

        }

        private void textBox5_TextChanged(object sender, EventArgs e)
        {

        }

        private void button1_Click(object sender, EventArgs e)
        {
            string nom = textBox2.Text;
            string prenom = textBox3.Text;
            string adresse = textBox4.Text;
            string tel = textBox1.Text;
            string mail = textBox5.Text;

            // Appeler la méthode d'ajout
            bool isAdded = DBConnection.AjoutClient(nom, prenom,mail, adresse, tel);

            // Afficher un message de confirmation ou d'erreur
            if (isAdded)
            {
                MessageBox.Show("Client ajouté avec succès !");
            }
            else
            {
                MessageBox.Show("Erreur lors de l'ajout du client.");
            }

        }
    }
}
