﻿namespace Form_SIO_SQL
{
    partial class GestionClients
    {
        /// <summary>
        /// Required designer variable.
        /// </summary>
        private System.ComponentModel.IContainer components = null;

        /// <summary>
        /// Clean up any resources being used.
        /// </summary>
        /// <param name="disposing">true if managed resources should be disposed; otherwise, false.</param>
        protected override void Dispose(bool disposing)
        {
            if (disposing && (components != null))
            {
                components.Dispose();
            }
            base.Dispose(disposing);
        }

        #region Windows Form Designer generated code

        /// <summary>
        /// Required method for Designer support - do not modify
        /// the contents of this method with the code editor.
        /// </summary>
        private void InitializeComponent()
        {
            listView1 = new ListView();
            textBox1 = new TextBox();
            label1 = new Label();
            button1 = new Button();
            SuspendLayout();
            // 
            // listView1
            // 
            listView1.Location = new Point(101, 102);
            listView1.Name = "listView1";
            listView1.Size = new Size(523, 289);
            listView1.TabIndex = 0;
            listView1.UseCompatibleStateImageBehavior = false;
            listView1.ItemActivate += listView1_ItemActivate;
            listView1.SelectedIndexChanged += listView1_SelectedIndexChanged;
            // 
            // textBox1
            // 
            textBox1.AccessibleName = "";
            textBox1.Location = new Point(101, 73);
            textBox1.Name = "textBox1";
            textBox1.PlaceholderText = "Rechercher par nom";
            textBox1.Size = new Size(229, 23);
            textBox1.TabIndex = 1;
            textBox1.Tag = "";
            textBox1.TextChanged += textBox1_TextChanged;
            // 
            // label1
            // 
            label1.AutoSize = true;
            label1.Font = new Font("Microsoft Sans Serif", 20.25F, FontStyle.Bold, GraphicsUnit.Point, 0);
            label1.Location = new Point(275, 18);
            label1.Name = "label1";
            label1.Size = new Size(225, 31);
            label1.TabIndex = 2;
            label1.Text = "Liste des clients";
            // 
            // button1
            // 
            button1.Font = new Font("Segoe UI", 10F);
            button1.Location = new Point(473, 397);
            button1.Name = "button1";
            button1.Size = new Size(151, 28);
            button1.TabIndex = 3;
            button1.Text = "Ajouter un client";
            button1.UseVisualStyleBackColor = true;
            button1.Click += button1_Click;
            // 
            // GestionClients
            // 
            AutoScaleDimensions = new SizeF(7F, 15F);
            AutoScaleMode = AutoScaleMode.Font;
            ClientSize = new Size(800, 450);
            Controls.Add(button1);
            Controls.Add(label1);
            Controls.Add(textBox1);
            Controls.Add(listView1);
            Font = new Font("Segoe UI", 9F);
            Name = "GestionClients";
            Text = "GestionClients";
            ResumeLayout(false);
            PerformLayout();
        }

        #endregion

        private ListView listView1;
        private TextBox textBox1;
        private Label label1;
        private Button button1;
    }
}