using System;
using System.Windows.Forms;

namespace Form_SIO_SQL
{
    public partial class DetailClients : Form
    {
        private TextBox txtNom, txtPrenom, txtAdresse, txtMail, txtTel, txtId;
        private TextBox txtMarque, txtPrix, txtStock;
        private Button btnSave;
        private bool estClient;

        // Constructeur pour les clients
        public DetailClients(int id, string nom, string prenom, string adresse, string tel, string mail)
        {
            InitializeComponent();
            this.estClient = true;
            InitialiserInterfaceClient(id, nom, prenom, adresse, tel, mail);
        }

        // Constructeur pour les produits
        public DetailClients(int reference, string nom, string marque, string prix, string stock, bool estClient)
        {
            textBox2.Text = string.Empty;
            textBox3.Text = string.Empty;
            textBox4.Text = string.Empty;
            textBox1.Text = string.Empty;

            InitializeComponent();
            this.estClient = estClient;
            if (!estClient)
            {
                InitialiserInterfaceProduit(reference, nom, marque, prix, stock);
            }


        }
        // Constructeur pour l'ajout d'un produit (champs vides)
        public DetailClients()
        {
            InitializeComponent();
            this.estClient = false; // Indique que c'est un produit, pas un client
            InitialiserInterfaceProduit(0, string.Empty, string.Empty, string.Empty, string.Empty); // Valeurs par défaut
        }


        private void InitialiserInterfaceClient(int id, string nom, string prenom, string adresse, string tel, string mail)
        {
            this.Text = $"Détails du Client - {prenom} {nom}";
            this.Size = new System.Drawing.Size(400, 350);

            AjouterLabelEtTextbox("ID:", id.ToString(), out txtId, 10, true);
            AjouterLabelEtTextbox("Nom:", nom, out txtNom, 40);
            AjouterLabelEtTextbox("Prénom:", prenom, out txtPrenom, 70);
            AjouterLabelEtTextbox("Adresse:", adresse, out txtAdresse, 100);
            AjouterLabelEtTextbox("Téléphone:", tel, out txtTel, 130);
            AjouterLabelEtTextbox("Email:", mail, out txtMail, 160);

            AjouterBoutonSauvegarde(200);
        }

        private void InitialiserInterfaceProduit(int id, string nom, string marque, string prix, string stock)
        {
            this.Text = $"Détails du Produit - {nom}";
            this.Size = new System.Drawing.Size(400, 300);


            AjouterLabelEtTextbox("Marque:",marque, out txtMarque, 20);
            AjouterLabelEtTextbox("Nom:",nom, out txtNom, 50);
            AjouterLabelEtTextbox("Prix:",prix, out txtPrix, 80);
            AjouterLabelEtTextbox("Stock:",stock, out txtStock, 110);

            btnAjouter = new Button
            {
                Text = "Ajouter le produit",
                Location = new System.Drawing.Point(50, 150),
                Width = 200
            };
            btnAjouter.Click += BtnAjouter_Click;

            this.Controls.Add(btnAjouter);
        }

        private void AjouterLabelEtTextbox(string labelText, string valeur, out TextBox textBox, int positionY, bool readOnly = false)
        {
            Label label = new Label
            {
                Text = labelText,
                AutoSize = true,
                Location = new System.Drawing.Point(10, positionY)
            };

            textBox = new TextBox
            {
                Text = valeur,
                Location = new System.Drawing.Point(100, positionY),
                Width = 250,
                ReadOnly = readOnly
            };

            this.Controls.Add(label);
            this.Controls.Add(textBox);
        }

        private void AjouterBoutonSauvegarde(int positionY)
        {
            btnSave = new Button
            {
                Text = "Sauvegarder",
                Location = new System.Drawing.Point(100, positionY),
                Width = 250
            };
            btnSave.Click += BtnSave_Click;

            this.Controls.Add(btnSave);
        }

        private bool ValiderChamps()
        {
            if (string.IsNullOrEmpty(txtNom.Text) || string.IsNullOrEmpty(txtPrenom.Text) ||
                string.IsNullOrEmpty(txtAdresse.Text) || string.IsNullOrEmpty(txtMail.Text) ||
                string.IsNullOrEmpty(txtTel.Text))
            {
                MessageBox.Show("Tous les champs doivent être remplis.", "Erreur", MessageBoxButtons.OK, MessageBoxIcon.Error);
                return false;
            }

            if (!decimal.TryParse(txtPrix.Text, out decimal prix) || prix <= 0)
            {
                MessageBox.Show("Veuillez entrer un prix valide.", "Erreur", MessageBoxButtons.OK, MessageBoxIcon.Error);
                return false;
            }

            return true;
        }

        private void BtnSave_Click(object sender, EventArgs e)
        {
            if (!ValiderChamps()) return;

            try
            {
                bool success = false;

                if (estClient)
                {
                    success = DBConnection.ModifierClient(txtId.Text, txtNom.Text, txtPrenom.Text, txtMail.Text, txtAdresse.Text, txtTel.Text);
                }
                else
                {
                    success = DBConnection.ModifierProduit(txtId.Text, txtNom.Text, txtMarque.Text, txtPrix.Text, txtStock.Text);
                }

                MessageBox.Show(success ? "Les informations ont été mises à jour !" : "Erreur lors de la mise à jour des informations.");
            }
            catch (Exception ex)
            {
                MessageBox.Show($"Une erreur est survenue : {ex.Message}", "Erreur", MessageBoxButtons.OK, MessageBoxIcon.Error);
            }

            this.Close();
        }

        private void label3_Click(object sender, EventArgs e)
        {

        }

        private void BtnAjouter_Click(object sender, EventArgs e)
        {
            string marque = txtMarque.Text;
            string nom = txtNom.Text;
            string prix = txtPrix.Text;
            string stock = txtStock.Text;

            if (string.IsNullOrWhiteSpace(marque) || string.IsNullOrWhiteSpace(nom) ||
                string.IsNullOrWhiteSpace(prix) || string.IsNullOrWhiteSpace(stock))
            {
                MessageBox.Show("Veuillez remplir tous les champs.", "Erreur", MessageBoxButtons.OK, MessageBoxIcon.Error);
                return;
            }

            bool isAdded = DBConnection.AjoutProduit(marque, nom, prix, stock);

            if (isAdded)
            {
                MessageBox.Show("Produit ajouté avec succès !", "Succès", MessageBoxButtons.OK, MessageBoxIcon.Information);
                this.Close();
            }
            else
            {
                MessageBox.Show("Erreur lors de l'ajout du produit.", "Erreur", MessageBoxButtons.OK, MessageBoxIcon.Error);
            }
        }

        private void button1_Click(object sender, EventArgs e)
        {
            string marque = textBox2.Text;
            string nom = textBox3.Text;
            string prix = textBox4.Text;
            string stock = textBox1.Text;

            // Appeler la méthode d'ajout
            bool isAdded = DBConnection.AjoutProduit(marque, nom, prix, stock);

            // Afficher un message de confirmation ou d'erreur
            if (isAdded)
            {
                MessageBox.Show("Produit ajouté avec succès !");
            }
            else
            {
                MessageBox.Show("Erreur lors de l'ajout du client.");
            }
        }
    }
}
