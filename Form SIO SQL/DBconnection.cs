using MySql.Data.MySqlClient;
using System.Data;
using System.Data.Common;
using System.Data.SqlTypes;
using System.Windows.Input;

namespace Form_SIO_SQL
{
    internal class DBConnection
    {
        public static MySqlConnection GetDBConnection()
        {
            string server = "127.0.0.1";
            string database = "db_sioshop";
            string username = "root";
            string password = "";

            string connectionString = $"server={server};Database={database};Uid={username};Pwd={password};SslMode=none;";

            MySqlConnection conn = new MySqlConnection(connectionString);

            try
            {
                conn.Open();  
                Console.WriteLine("Connexion réussie à la base de données.");
            }
            catch (MySqlException ex)
            {
                Console.WriteLine($"Erreur de connexion à la base de données : {ex.Message}");
            }
            catch (Exception ex)
            {
                Console.WriteLine($"Erreur inattendue : {ex.Message}");
            }
            return new MySqlConnection(connectionString);
        }

        // Méthode pour exécuter une requête
        public static DbDataReader ExecuteQuery(string query)
        {
            MySqlConnection conn = GetDBConnection();
            try
            {
                conn.Open();
                MySqlCommand cmd = new MySqlCommand(query, conn);
                return cmd.ExecuteReader(CommandBehavior.CloseConnection); // Ferme la connexion après lecture
            }
            catch (Exception ex)
            {
                Console.WriteLine($"Erreur lors de l'exécution de la requête : {ex.Message}");
                throw;
            }
        }

        public static List<Employe> GetEmployes()
        {
            string query = "SELECT * FROM employe"; // Adaptez le nom de la table
            List<Employe> employes = new List<Employe>();

            using (DbDataReader reader = ExecuteQuery(query))
            {
                while (reader.Read())
                {
                    Employe emp = new Employe(
                        reader.GetInt32("matricule"),
                        reader.GetString("nom"),
                        reader.GetString("prenom"),
                        reader.GetString("adresse"),
                        reader.GetString("mail"),
                        reader.GetString("tel"),
                        reader.GetString("login"),
                        reader.GetString("mdp")
                    );
                    employes.Add(emp);
                }
            }

            return employes;
        } 

        public static List<Client> GetClients()
        {
            string query = "SELECT * FROM client"; // Adaptez le nom de la table
            List<Client> clients = new List<Client>();

            using (DbDataReader reader = ExecuteQuery(query))
            {
                while (reader.Read())
                {
                    Client cli = new Client(
                        reader.GetInt32("id"),
                        reader.GetString("nom"),
                        reader.GetString("prenom"),
                        reader.GetString("adresse"),
                        reader.GetString("mail"),
                        reader.GetString("num_tel")
                    );
                    clients.Add(cli);
                }
            }

            return clients;
        }

        public static bool VerificationUtilisateur(string username, string password)
        {
            string query = "SELECT COUNT(*) FROM employe WHERE login = @username AND mdp = @password";
            using (MySqlConnection conn = GetDBConnection())
            {
                conn.Open();
                using (MySqlCommand cmd = new MySqlCommand(query, conn))
                {
                    cmd.Parameters.AddWithValue("@username", username);
                    cmd.Parameters.AddWithValue("@password", password);

                    int userCount = Convert.ToInt32(cmd.ExecuteScalar());
                    return userCount > 0; // Retourne true si un utilisateur est trouvé
                }
            }
        }

        public static string GetMatricule(string username)
        {
            string matricule = null;
            string query = "SELECT matricule FROM employe WHERE login = @username";

            using (MySqlConnection conn = GetDBConnection())  
            {
                conn.Open(); 
                using (MySqlCommand cmd = new MySqlCommand(query, conn))
                {
  
                    cmd.Parameters.AddWithValue("@username", username);

                    var result = cmd.ExecuteScalar();  

                    if (result != null)
                    {
                        matricule = result.ToString();
                    }
                }
            }

            return matricule;
        }

        public static (string nom,string prenom) GetNom(string username)
        {
            string nom = null;
            string prenom = null;
            string query = "SELECT nom,prenom FROM employe WHERE login = @username";

            using (MySqlConnection conn = GetDBConnection())  // Connexion à la base de données
            {
                conn.Open();  // Ouverture de la connexion
                using (MySqlCommand cmd = new MySqlCommand(query, conn))
                {
                    // Ajout du paramètre username pour éviter les injections SQL
                    cmd.Parameters.AddWithValue("@username", username);

                    using (var reader = cmd.ExecuteReader()) // Exécution de la requête et récupération des résultats
                    {
                        if (reader.Read())  // Si l'utilisateur est trouvé
                        {
                            nom = reader["nom"].ToString();  // Récupérer le nom
                            prenom = reader["prenom"].ToString();  // Récupérer le nom
                        }
                    }
                }
            }

            return (nom,prenom);  // Retourner les informations sous forme de tuple
        }


    }
}