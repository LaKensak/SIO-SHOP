using Form_SIO_SQL.Models;
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
                        reader.GetInt32("Num_client"),
                        reader.GetString("nom"),
                        reader.GetString("prenom"),
                        reader.GetString("adresse"),
                        reader.GetString("mail"),
                        reader.GetString("tel")
                    );
                    clients.Add(cli);
                }
            }

            return clients;
        }
        public static List<Produit> GetProduits()
        {
            string query = "SELECT * FROM produit"; 
            List<Produit> produits = new List<Produit>();

            using (DbDataReader reader = ExecuteQuery(query))
            {
                while (reader.Read())
                {
                    Produit cli = new Produit(
                        reader.GetInt32("reference"),
                        reader.GetString("marque"),
                        reader.GetString("nom"),
                        reader.GetDecimal("prix"),
                        reader.GetInt32("stock")
                    );
                    produits.Add(cli);
                }
            }

            return produits;
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

                    using (var reader = cmd.ExecuteReader()) 
                    {
                        if (reader.Read()) 
                        {
                            nom = reader["nom"].ToString();  
                            prenom = reader["prenom"].ToString();  
                        }
                    }
                }
            }

            return (nom,prenom);  
        }

        public static bool GetClients(string id,string nom, string prenom,string adresse,string tel)
        {
            string query = "SELECT nom,prenom,adresse,mail,tel FROM client WHERE id = @id AND nom = @nom AND prenom = @prenom AND adresse = @adr AND tel = @tel";
            using (MySqlConnection conn = GetDBConnection())
            {
                conn.Open();
                using (MySqlCommand cmd = new MySqlCommand(query, conn))
                {
                    cmd.Parameters.AddWithValue("@id", id);
                    cmd.Parameters.AddWithValue("@nom",nom);
                    cmd.Parameters.AddWithValue("@prenom",prenom);
                    cmd.Parameters.AddWithValue("@adr",adresse);
                    cmd.Parameters.AddWithValue("@tel",tel);

                    int userCount = Convert.ToInt32(cmd.ExecuteScalar());
                    return userCount > 0; // Retourne true si un utilisateur est trouvé
                }
            }
        }

        public static bool AjoutClient(string nom, string prenom,string mail, string adresse, string tel)
        {
            string query = "INSERT INTO client (nom, prenom ,mail, adresse, tel) VALUES (@nom, @prenom, @mail, @adr, @tel)";
            using (MySqlConnection conn = GetDBConnection())
            {
                conn.Open();
                using (MySqlCommand cmd = new MySqlCommand(query, conn))
                {
                    // Ajouter les paramètres à la commande
                    cmd.Parameters.AddWithValue("@nom", nom);
                    cmd.Parameters.AddWithValue("@prenom", prenom);
                    cmd.Parameters.AddWithValue("@mail", mail);
                    cmd.Parameters.AddWithValue("@adr", adresse);
                    cmd.Parameters.AddWithValue("@tel", tel);

                    int rowsAffected = cmd.ExecuteNonQuery();

                    // Retourne true si au moins une ligne a été insérée
                    return rowsAffected > 0;
                }
            }
        }
        public static bool AjoutProduit(string marque, string nom, string prix, string stock)
        {
            string query = "INSERT INTO produit (marque, nom, prix, stock) VALUES (@marque, @nom, @prix, @stock)";

            using (MySqlConnection conn = GetDBConnection())
            {
                conn.Open();

                using (MySqlCommand cmd = new MySqlCommand(query, conn))
                {
                    cmd.Parameters.AddWithValue("@marque", marque);
                    cmd.Parameters.AddWithValue("@nom", nom);
                    cmd.Parameters.AddWithValue("@prix", prix);
                    cmd.Parameters.AddWithValue("@stock", stock);

                    try
                    {
                        int rowsAffected = cmd.ExecuteNonQuery();

                        if (rowsAffected > 0)
                        {
                            string lastInsertIdQuery = "SELECT LAST_INSERT_ID()";
                            MySqlCommand lastIdCmd = new MySqlCommand(lastInsertIdQuery, conn);
                            int lastInsertId = Convert.ToInt32(lastIdCmd.ExecuteScalar());

                            Console.WriteLine($"Le Produit à été ajouter avec succès! ID: {lastInsertId}");
                            return true;
                        }

                        return false;
                    }
                    catch (Exception ex)
                    {
                        Console.WriteLine($"Error: {ex.Message}");
                        return false;
                    }
                }
            }
        }


        public static bool ModifierClient(string id, string nom, string prenom, string mail, string adresse, string tel)
        {
            // Correction de la requête SQL : UPDATE doit indiquer les colonnes à modifier
            string query = "UPDATE client SET nom = @nom, prenom = @prenom, mail = @mail, adresse = @adr, tel = @tel WHERE Num_client = @id";

            using (MySqlConnection conn = GetDBConnection())
            {
                conn.Open();
                using (MySqlCommand cmd = new MySqlCommand(query, conn))
                {
                    // Ajouter les paramètres à la commande
                    cmd.Parameters.AddWithValue("@id", id);  
                    cmd.Parameters.AddWithValue("@nom", nom);
                    cmd.Parameters.AddWithValue("@prenom", prenom);
                    cmd.Parameters.AddWithValue("@mail", mail);
                    cmd.Parameters.AddWithValue("@adr", adresse);
                    cmd.Parameters.AddWithValue("@tel", tel);

                    int rowsAffected = cmd.ExecuteNonQuery();

                    // Retourne true si au moins une ligne a été modifiée
                    return rowsAffected > 0;
                }
            }
        }
        public static bool ModifierProduit(string reference, string marque, string nom, string prix, string stock)
        {
            // Correction de la requête SQL : UPDATE doit indiquer les colonnes à modifier
            string query = "UPDATE produit SET marque = @marque, nom = @nom, prix = @prix, stock = @stock WHERE reference = @reference";

            using (MySqlConnection conn = GetDBConnection())
            {
                conn.Open();
                using (MySqlCommand cmd = new MySqlCommand(query, conn))
                {
                    // Ajouter les paramètres à la commande
                    cmd.Parameters.AddWithValue("@reference", reference);  
                    cmd.Parameters.AddWithValue("@marque", marque);
                    cmd.Parameters.AddWithValue("@nom", nom);
                    cmd.Parameters.AddWithValue("@prix", prix);
                    cmd.Parameters.AddWithValue("@stock", stock);

                    int rowsAffected = cmd.ExecuteNonQuery();

                    // Retourne true si au moins une ligne a été modifiée
                    return rowsAffected > 0;
                }
            }
        }
        public static bool GetProduits(string nom, string reference, string marque, string prix, string stock)
        {
            string query = "SELECT reference,marque,nom,prix,stock FROM produit WHERE reference = @reference AND marque = @marque AND nom = @nom AND prix = @prix AND stock = @stock";
            using (MySqlConnection conn = GetDBConnection())
            {
                conn.Open();
                using (MySqlCommand cmd = new MySqlCommand(query, conn))
                {
                    cmd.Parameters.AddWithValue("@reference", reference);
                    cmd.Parameters.AddWithValue("@marque", marque);
                    cmd.Parameters.AddWithValue("@nom", nom);
                    cmd.Parameters.AddWithValue("@prix", prix);
                    cmd.Parameters.AddWithValue("@stock", stock);

                    int userCount = Convert.ToInt32(cmd.ExecuteScalar());
                    return userCount > 0; // Retourne true si un utilisateur est trouvé
                }
            }
        }
    }
}