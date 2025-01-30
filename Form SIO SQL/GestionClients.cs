using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Reflection.Emit;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace Form_SIO_SQL
{
    public partial class GestionClients : Form
    {
        public GestionClients()
        {
            InitializeComponent();
            ListView();
        }


        private void ChargerClient(string nomFiltre)
        {
            // Vider les éléments existants
            listView1.Items.Clear();

            // Récupérer la liste des clients
            List<Client> clients = DBConnection.GetClients();

            // Appliquer le filtre pour effectuer une cherche sur le nom
            var clientsFiltres = clients.Where(client =>
                client.GetNom().IndexOf(nomFiltre, StringComparison.OrdinalIgnoreCase) >= 0).ToList();

            // Parcourir la liste filtrée et ajouter les éléments à la ListView
            foreach (var personne in clientsFiltres)
            {
                var item = new ListViewItem(personne.GetID());
                item.SubItems.Add(personne.GetNom());
                item.SubItems.Add(personne.GetPrenom());
                item.SubItems.Add(personne.GetAdr());
                item.SubItems.Add(personne.GetMail());
                item.SubItems.Add(personne.GetTel());
                listView1.Items.Add(item);
            }
        }

        private void listView1_ItemActivate(object sender, EventArgs e)
        {
            if (listView1.SelectedItems.Count > 0)
            {
                // Récupérer l'élément sélectionné
                var selectedItem = listView1.SelectedItems[0];

                // Obtenir les données du client à partir des colonnes
                int id = int.Parse(selectedItem.Text); // La première colonne est l'ID
                string nom = selectedItem.SubItems[1].Text;
                string prenom = selectedItem.SubItems[2].Text;
                string adresse = selectedItem.SubItems[3].Text;
                string tel = selectedItem.SubItems[4].Text;
                string mail = selectedItem.SubItems[5].Text;

                // Créer une instance du formulaire cible et passer les données du client
                DetailClients detailsForm = new DetailClients(id, nom, prenom, adresse, tel, mail);
                detailsForm.Show(); // Afficher le formulaire
            }
        }



        private void ListView()
        {
            listView1.View = View.Details;
            listView1.Columns.Add("ID", 50);
            listView1.Columns.Add("Nom", 100);
            listView1.Columns.Add("Prénom", 100);
            listView1.Columns.Add("Adresse", 150);
            listView1.Columns.Add("Mail", 150);
            listView1.Columns.Add("Téléphone", 100);
        }

        private void listView1_SelectedIndexChanged(object sender, EventArgs e)
        {
        }

        private void textBox1_TextChanged(object sender, EventArgs e)
        {
            ChargerClient(textBox1.Text);
        }

        private void button1_Click(object sender, EventArgs e)
        {
            AjoutClient AjoutClient = new AjoutClient();
            AjoutClient.Show();
            this.Hide();
        }
    }
}
