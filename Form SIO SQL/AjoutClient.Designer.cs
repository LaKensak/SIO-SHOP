﻿namespace Form_SIO_SQL
{
    partial class AjoutClient
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
            label1 = new Label();
            textBox2 = new TextBox();
            textBox3 = new TextBox();
            textBox4 = new TextBox();
            textBox5 = new TextBox();
            label2 = new Label();
            label3 = new Label();
            label4 = new Label();
            label5 = new Label();
            label6 = new Label();
            button1 = new Button();
            label7 = new Label();
            textBox1 = new TextBox();
            SuspendLayout();
            // 
            // label1
            // 
            label1.AutoSize = true;
            label1.Font = new Font("Segoe UI", 15F, FontStyle.Bold);
            label1.Location = new Point(163, 22);
            label1.Name = "label1";
            label1.Size = new Size(172, 28);
            label1.TabIndex = 0;
            label1.Text = "Ajouter un client";
            label1.Click += label1_Click;
            // 
            // textBox2
            // 
            textBox2.Location = new Point(195, 93);
            textBox2.Name = "textBox2";
            textBox2.Size = new Size(145, 23);
            textBox2.TabIndex = 2;
            textBox2.TextChanged += textBox2_TextChanged;
            // 
            // textBox3
            // 
            textBox3.Location = new Point(195, 131);
            textBox3.Name = "textBox3";
            textBox3.Size = new Size(145, 23);
            textBox3.TabIndex = 3;
            textBox3.TextChanged += textBox3_TextChanged;
            // 
            // textBox4
            // 
            textBox4.Location = new Point(195, 170);
            textBox4.Name = "textBox4";
            textBox4.Size = new Size(145, 23);
            textBox4.TabIndex = 4;
            textBox4.TextChanged += textBox4_TextChanged;
            // 
            // textBox5
            // 
            textBox5.Location = new Point(195, 253);
            textBox5.Name = "textBox5";
            textBox5.Size = new Size(145, 23);
            textBox5.TabIndex = 5;
            textBox5.TextChanged += textBox5_TextChanged;
            // 
            // label2
            // 
            label2.AutoSize = true;
            label2.Font = new Font("Segoe UI", 12F);
            label2.Location = new Point(113, 82);
            label2.Name = "label2";
            label2.Size = new Size(0, 21);
            label2.TabIndex = 6;
            // 
            // label3
            // 
            label3.AutoSize = true;
            label3.Font = new Font("Segoe UI", 11F);
            label3.Location = new Point(140, 92);
            label3.Name = "label3";
            label3.Size = new Size(42, 20);
            label3.TabIndex = 7;
            label3.Text = "Nom";
            // 
            // label4
            // 
            label4.AutoSize = true;
            label4.Font = new Font("Segoe UI", 11F);
            label4.Location = new Point(122, 134);
            label4.Name = "label4";
            label4.Size = new Size(60, 20);
            label4.TabIndex = 8;
            label4.Text = "Prenom";
            // 
            // label5
            // 
            label5.AutoSize = true;
            label5.Font = new Font("Segoe UI", 11F);
            label5.Location = new Point(121, 173);
            label5.Name = "label5";
            label5.Size = new Size(61, 20);
            label5.TabIndex = 9;
            label5.Text = "Adresse";
            // 
            // label6
            // 
            label6.AutoSize = true;
            label6.Font = new Font("Segoe UI", 11F);
            label6.Location = new Point(111, 212);
            label6.Name = "label6";
            label6.Size = new Size(78, 20);
            label6.TabIndex = 10;
            label6.Text = "Téléphone";
            // 
            // button1
            // 
            button1.Location = new Point(104, 315);
            button1.Name = "button1";
            button1.Size = new Size(236, 23);
            button1.TabIndex = 11;
            button1.Text = "Ajouter le client";
            button1.UseVisualStyleBackColor = true;
            button1.Click += button1_Click;
            // 
            // label7
            // 
            label7.AutoSize = true;
            label7.Font = new Font("Segoe UI", 11F);
            label7.Location = new Point(144, 256);
            label7.Name = "label7";
            label7.Size = new Size(38, 20);
            label7.TabIndex = 13;
            label7.Text = "Mail";
            // 
            // textBox1
            // 
            textBox1.Location = new Point(195, 209);
            textBox1.Name = "textBox1";
            textBox1.Size = new Size(145, 23);
            textBox1.TabIndex = 12;
            // 
            // AjoutClient
            // 
            AutoScaleDimensions = new SizeF(7F, 15F);
            AutoScaleMode = AutoScaleMode.Font;
            ClientSize = new Size(508, 372);
            Controls.Add(label7);
            Controls.Add(textBox1);
            Controls.Add(button1);
            Controls.Add(label6);
            Controls.Add(label5);
            Controls.Add(label4);
            Controls.Add(label3);
            Controls.Add(label2);
            Controls.Add(textBox5);
            Controls.Add(textBox4);
            Controls.Add(textBox3);
            Controls.Add(textBox2);
            Controls.Add(label1);
            Name = "AjoutClient";
            Text = "AjoutClient";
            ResumeLayout(false);
            PerformLayout();
        }

        #endregion

        private Label label1;
        private TextBox textBox2;
        private TextBox textBox3;
        private TextBox textBox4;
        private TextBox textBox5;
        private Label label2;
        private Label label3;
        private Label label4;
        private Label label5;
        private Label label6;
        private Button button1;
        private Label label7;
        private TextBox textBox1;
    }
}