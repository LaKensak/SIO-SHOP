using System;
using System.Collections.Generic;

namespace Form_SIO_SQL.Models
{
    // Classe pour représenter un produit
        public class Produit
        {
            // Propriétés
            public int reference { get; set; }
            public string marque { get; set; }
            public string nom { get; set; }
            public decimal prix { get; set; }
            public int stock { get; set; }

            // Constructeur
            public Produit(int Reference, string Marque, string Nom, decimal Prix, int Stock)
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
                stock += quantite;
            }

            public bool EstDisponible()
            {
                return stock > 0;
            }
        }
    }