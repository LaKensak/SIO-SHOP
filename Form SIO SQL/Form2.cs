using System;
using System.Windows.Forms;

namespace Form_SIO_SQL
{
    public partial class Form2 : Form
    {
        public Form2()
        {
            InitializeComponent();
        }

        private void Form2_Load(object sender, EventArgs e)
        {
        }

        private void AfficherEmploye()
        {
            label5.Text = Form1.Nom;
            label6.Text = Form1.Prenom;
            label7.Text = Form1.Matricule;
        }



        private void button4_Click(object sender, EventArgs e)
        {
            AfficherEmploye();
        }

        private void label2_Click(object sender, EventArgs e) { }

        private void button5_Click(object sender, EventArgs e)
        {
            Form1.Username = null;
            Form1.Password = null;
            Form1.Matricule = null;
            Form1.Nom = null;
            Form1.Prenom = null;

            Form1 loginForm = new Form1();
            loginForm.Show();
            this.Hide();
        }

        private void button1_Click(object sender, EventArgs e) // Saisir une vente
        {
            Vente SaisirVente = new Vente();
            SaisirVente.Show();
            this.Hide();

        }

        private void button2_Click(object sender, EventArgs e) // Gestions Clients
        {
            GestionClients gestionClients = new GestionClients();
            gestionClients.Show();
            this.Hide();
        }

        private void button3_Click(object sender, EventArgs e) // Gestions Produits
        {
            GestionProduits gestionProduits = new GestionProduits();
            gestionProduits.Show();
            this.Hide();
        }
    }
}
