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
                MessageBox.Show("Session d�j� active. D�connexion avant de se reconnecter.");
                return;
            }
            string username = textBox1.Text;
            string password = textBox2.Text;

            // V�rification des informations d'identification de l'utilisateur
            if (DBConnection.VerificationUtilisateur(username, password))
            {
                // Appeler la m�thode GetMatricule pour r�cup�rer le matricule de l'utilisateur
                string matricule = DBConnection.GetMatricule(username);

                // Si le matricule est trouv�, stocker les informations dans les variables statiques de Form1
                if (matricule != null)
                {
                    // R�cup�rer le nom et pr�nom de l'utilisateur
                    var (nom, prenom) = DBConnection.GetNom(username);

                    // Stocker les informations de session dans des variables statiques
                    Form1.Username = username;
                    Form1.Password = password;
                    Form1.Matricule = matricule;
                    Form1.Nom = nom;
                    Form1.Prenom = prenom;

                    MessageBox.Show("Connexion r�ussie !");

                    // Ouvrir la fen�tre principale de l'application (Form2)
                    Form2 mainForm = new Form2();
                    mainForm.Show();
                    this.Hide(); // Masquer la fen�tre de connexion
                }
                else
                {
                    MessageBox.Show("Impossible de r�cup�rer le matricule de l'utilisateur.", "Erreur", MessageBoxButtons.OK, MessageBoxIcon.Error);
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
