namespace Form_SIO_SQL.Models
{
    public class Produit
    {
        // Propriétés
        public int Reference { get; set; }  
        public string Marque { get; set; }
        public string Nom { get; set; }
        public decimal Prix { get; set; }
        public int Stock { get; set; }

        // Constructeur
        public Produit(int reference, string marque, string nom, decimal prix, int stock)
        {
            Reference = reference;  
            Marque = marque;
            Nom = nom;
            Prix = prix;
            Stock = stock;
        }

        // Méthodes
        public void MettreAJourStock(int quantite)
        {
            Stock += quantite;
        }

        public bool EstDisponible()
        {
            return Stock > 0;
        }
    }
}