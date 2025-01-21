using static System.Windows.Forms.VisualStyles.VisualStyleElement.StartPanel;

namespace Form_SIO_SQL
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


        private void label1_Click(object sender, EventArgs e)
        {

        }

        private void label2_Click(object sender, EventArgs e)
        {

        }
        public static string Username { get; set; }
        public static string Password { get; set; }
        public static string Matricule { get; set; }
        public static string Prenom { get; set; }
        public static string Nom { get; set; }


        private void login()
        {

            if (Form1.Username != null && Form1.Password != null)
            {
                MessageBox.Show("Session déjà active. Déconnexion avant de se reconnecter.");
                return;
            }
            string username = textBox1.Text;
            string password = textBox2.Text;

            // Vérification des informations d'identification de l'utilisateur
            if (DBConnection.VerificationUtilisateur(username, password))
            {
                // Appeler la méthode GetMatricule pour récupérer le matricule de l'utilisateur
                string matricule = DBConnection.GetMatricule(username);

                // Si le matricule est trouvé, stocker les informations dans les variables statiques de Form1
                if (matricule != null)
                {
                    // Récupérer le nom et prénom de l'utilisateur
                    var (nom, prenom) = DBConnection.GetNom(username);

                    // Stocker les informations de session dans des variables statiques
                    Form1.Username = username;
                    Form1.Password = password;
                    Form1.Matricule = matricule;
                    Form1.Nom = nom;
                    Form1.Prenom = prenom;

                    MessageBox.Show("Connexion réussie !");

                    // Ouvrir la fenêtre principale de l'application (Form2)
                    Form2 mainForm = new Form2();
                    mainForm.Show();
                    this.Hide(); // Masquer la fenêtre de connexion
                }
                else
                {
                    MessageBox.Show("Impossible de récupérer le matricule de l'utilisateur.", "Erreur", MessageBoxButtons.OK, MessageBoxIcon.Error);
                }
            }
            else
            {
                MessageBox.Show("Nom d'utilisateur ou mot de passe incorrect.", "Erreur de connexion", MessageBoxButtons.OK, MessageBoxIcon.Error);
            }
        }



        private void button1_Click(object sender, EventArgs e)
        {
            login();
        }

        private void textBox1_TextChanged_1(object sender, EventArgs e)
        {

        }

        private void textBox2_TextChanged(object sender, EventArgs e)
        {

        }
    }
}
