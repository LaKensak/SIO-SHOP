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

        // Méthodes abstraites
        public abstract string GetPrenom();
        public abstract string GetInformations();
        public abstract string GetNom();
        public abstract string GetID();
        public abstract string GetTel();
        public abstract string GetAdr();
        public abstract string GetMail();
    }

    public class Employe : Personne
    {
        // Propriétés spécifiques à Employe
        public string Login { get; set; }
        public string Mdp { get; set; }

        // Constructeur
        public Employe(int num, string nom, string prenom, string adresse, string mail, string tel, string login, string mdp)
            : base(num, nom, prenom, adresse, mail, tel)
        {
            Login = login;
            Mdp = mdp;
        }

        // Implémentation des méthodes abstraites
        public override string GetPrenom()
        {
            return Prenom;
        }

        public override string GetNom()
        {
            return Nom;
        }

        public override string GetID()
        {
            return Num.ToString();
        }

        public override string GetTel()
        {
            return Num_tel;
        }

        public override string GetAdr()
        {
            return Adresse;
        }

        public override string GetMail()
        {
            return Mail;
        }

        public override string GetInformations()
        {
            return $"Employé: {Prenom} {Nom}, Login: {Login}, Adresse: {Adresse}, Téléphone: {Num_tel}, Email: {Mail}";
        }
    }

    public class Client : Personne
    {
        // Constructeur
        public Client(int num, string nom, string prenom, string adresse, string mail, string tel)
            : base(num, nom, prenom, adresse, mail, tel)
        {
        }

        // Implémentation des méthodes abstraites
        public override string GetPrenom()
        {
            return Prenom;
        }

        public override string GetNom()
        {
            return Nom;
        }

        public override string GetID()
        {
            return Num.ToString();
        }

        public override string GetTel()
        {
            return Num_tel;
        }

        public override string GetAdr()
        {
            return Adresse;
        }

        public override string GetMail()
        {
            return Mail;
        }

        public override string GetInformations()
        {
            return $"ID: {Num},Client:{Prenom} {Nom}, Adresse: {Adresse}, Téléphone: {Num_tel}, Email: {Mail}";
        }
    }
}
