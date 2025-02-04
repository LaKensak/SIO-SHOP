using System;
using System.Collections.Generic;
using System.Data.Common;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace sio_shop
{
    class Client : Personne
    {
        public List<Tuple<Produit, DateTime>> Lst_pdt_achete { get; set; }
        // tuple pour avoir une liste avec type 1 lié à type 2; on a donc une liste de Tuples
        public Client(string identifiant, string nom, string prenom, string adresse, string mail, string tel)
            : base(identifiant, nom, prenom, adresse, mail, tel)
        {
            Lst_pdt_achete = new List<Tuple<Produit, DateTime>>();
        }
        public Client()
        {
            Identifiant = null;
            Nom = null;
            Prenom = null;
            Adresse = null;
            Mail = null;
            Tel = null;
            Lst_pdt_achete = new List<Tuple<Produit, DateTime>>();
        }
        public Client(DbDataReader reader)
        {
            int iID = reader.GetOrdinal("num_client");
            int inom = reader.GetOrdinal("nom");
            int iPrenom = reader.GetOrdinal("prenom");
            int iAdresse = reader.GetOrdinal("adresse");
            int iMail = reader.GetOrdinal("mail");
            int iTel = reader.GetOrdinal("tel");
            Identifiant = reader.GetString(iID);
            Nom = reader.GetString(inom);
            Prenom = reader.GetString(iPrenom);
            Adresse = reader.GetString(iAdresse);
            Mail = reader.GetString(iMail);
            Tel = reader.GetString(iTel);
        }
        public string print()
        {
            return Identifiant + " - " + Nom + " - " + Prenom + " - " + Tel + " - " + Adresse;
        }
    }
}
