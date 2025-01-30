using Form_SIO_SQL.Models;
using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Security.Cryptography.Xml;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace Form_SIO_SQL
{
    public partial class GestionProduits : Form
    {
        public GestionProduits()
        {
            InitializeComponent();
            ListView();
        }

        private void ChargerProduit(string nomFiltre, string marqueFiltre)
        {
            listView1.Items.Clear();
            List<Produit> produits = DBConnection.GetProduits();

            // Appliquer les filtres (Marque)
            var produitsFiltres = produits
    .Where(produit =>
        (string.IsNullOrEmpty(nomFiltre) || produit.Marque.IndexOf(nomFiltre, StringComparison.OrdinalIgnoreCase) >= 0) &&
        (marqueFiltre == "Toutes" || produit.Marque == marqueFiltre))
    .ToList();


            // Ajouter les produits filtrés à la ListView
            foreach (var produit in produitsFiltres)
            {
                var item = new ListViewItem(produit.Reference.ToString());
                item.SubItems.Add(produit.Nom);
                item.SubItems.Add(produit.Marque);
                item.SubItems.Add(produit.Prix.ToString("C"));
                item.SubItems.Add(produit.Stock.ToString());
                listView1.Items.Add(item);
            }
        }

        private void ChargerMarques()
        {
            List<Produit> produits = DBConnection.GetProduits();

            var marques = produits.Select(p => p.Marque).Distinct().OrderBy(m => m).ToList();

            // Ajouter une option "Toutes" pour réinitialiser le filtre
            marques.Insert(0, "Toutes");

            // Remplir la ComboBox
            comboBox1.DataSource = marques;
        }


        private void listView1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }
        private void listView1_ItemActivate(object sender, EventArgs e)
        {
            if (listView1.SelectedItems.Count > 0)
            {
                var selectedItem = listView1.SelectedItems[0];

                int reference = int.Parse(selectedItem.Text);
                string nom = selectedItem.SubItems[1].Text;
                string marque = selectedItem.SubItems[2].Text;
                string prix = selectedItem.SubItems[3].Text;
                string stock = selectedItem.SubItems[4].Text;

                DetailClients detailsForm = new DetailClients(reference, nom, marque, prix, stock, false);
                detailsForm.Show();
            }
        }


        private void ListView()
        {
            listView1.View = View.Details;
            listView1.Columns.Add("Référence", 80);
            listView1.Columns.Add("Nom", 150);
            listView1.Columns.Add("Marque", 100);
            listView1.Columns.Add("Prix", 80);
            listView1.Columns.Add("Stock", 60);
        }


        private void GestionProduits_Load(object sender, EventArgs e)
        {
            ChargerMarques();
        }

        private void textBox1_TextChanged(object sender, EventArgs e)
        {
            ChargerProduit(textBox1.Text, comboBox1.SelectedItem?.ToString() ?? "Toutes");
        }

        private void comboBox1_SelectedIndexChanged(object sender, EventArgs e)
        {
            ChargerProduit(textBox1.Text, comboBox1.SelectedItem.ToString());
        }

        private void button1_Click(object sender, EventArgs e)
        {
            DetailClients ajoutProduitForm = new DetailClients();
            ajoutProduitForm.Show();
            this.Hide();
        }
    }
}
