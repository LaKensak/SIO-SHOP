using System;

namespace Form_SIO_SQL
{

        public abstract class Personne
        {
            // Propriétés
            public int Num { get; set; }
            public string Nom { get; set; }
            public string Prenom { get; set; }
            public string Adresse { get; set; }
            public string Mail { get; set; }
            public string Num_tel { get; set; }

            // Constructeur
            protected Personne(int num, string nom, string prenom, string adresse, string mail, string tel)
            {
                Num = num;  
                Nom = nom;
                Prenom = prenom;
                Adresse = adresse;
                Mail = mail;
                Num_tel = tel;
            }

            public abstract string GetInformations();
        }

        public class Employe : Personne
        {
            // Propriétés
            public string Login { get; set; }  
            public string Mdp { get; set; }

            // Constructeur
            public Employe(int num, string nom, string prenom, string adresse, string mail, string tel, string login, string mdp): base(num, nom, prenom, adresse, mail, tel)
            {
                Login = login;
                Mdp = mdp;
            }


            public override string GetInformations()
            {
                return $"Employé: {Prenom} {Nom} - Login: {Login}";
            }
        }

        public class Client : Personne
        {
            // Constructeur
            public Client(int num, string nom, string prenom, string adresse, string mail, string tel)
                : base(num, nom, prenom, adresse, mail, tel)
            {
                // Aucun attribut pour Client
            }

            // Implémentation de la méthode abstraite
            public override string GetInformations()
            {
                return $"Client: {Prenom} {Nom}";
            }

        }
    }