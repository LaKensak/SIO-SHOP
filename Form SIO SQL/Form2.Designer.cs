namespace Form_SIO_SQL
{
    partial class Form2
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
        private void InitializeComponent()
        {
            vente = new Button();
            button2 = new Button();
            button3 = new Button();
            button4 = new Button();
            label1 = new Label();
            label2 = new Label();
            label3 = new Label();
            label4 = new Label();
            label5 = new Label();
            label6 = new Label();
            label7 = new Label();
            button5 = new Button();
            SuspendLayout();
            // 
            // vente
            // 
            vente.Location = new Point(313, 90);
            vente.Name = "vente";
            vente.Size = new Size(134, 23);
            vente.TabIndex = 0;
            vente.Text = "Saisir une vente";
            vente.UseVisualStyleBackColor = true;
            vente.Click += button1_Click;
            // 
            // button2
            // 
            button2.Location = new Point(313, 133);
            button2.Name = "button2";
            button2.Size = new Size(134, 23);
            button2.TabIndex = 1;
            button2.Text = "Gestion clients";
            button2.UseVisualStyleBackColor = true;
            button2.Click += button2_Click;
            // 
            // button3
            // 
            button3.Location = new Point(313, 175);
            button3.Name = "button3";
            button3.Size = new Size(134, 23);
            button3.TabIndex = 2;
            button3.Text = "Gestion produits";
            button3.UseVisualStyleBackColor = true;
            button3.Click += button3_Click;
            // 
            // button4
            // 
            button4.Location = new Point(12, 42);
            button4.Name = "button4";
            button4.Size = new Size(100, 23);
            button4.TabIndex = 3;
            button4.Text = "Afficher";
            button4.UseVisualStyleBackColor = true;
            button4.Click += button4_Click;
            // 
            // label1
            // 
            label1.AutoSize = true;
            label1.Font = new Font("Segoe UI", 16F, FontStyle.Bold);
            label1.Location = new Point(338, 22);
            label1.Name = "label1";
            label1.Size = new Size(87, 30);
            label1.TabIndex = 4;
            label1.Text = "Accueil";
            // 
            // label2
            // 
            label2.AutoSize = true;
            label2.Location = new Point(289, 94);
            label2.Name = "label2";
            label2.Size = new Size(18, 15);
            label2.TabIndex = 5;
            label2.Text = "✵";
            label2.Click += label2_Click;
            // 
            // label3
            // 
            label3.AutoSize = true;
            label3.Location = new Point(289, 137);
            label3.Name = "label3";
            label3.Size = new Size(18, 15);
            label3.TabIndex = 6;
            label3.Text = "✵";
            // 
            // label4
            // 
            label4.AutoSize = true;
            label4.Location = new Point(289, 179);
            label4.Name = "label4";
            label4.Size = new Size(18, 15);
            label4.TabIndex = 7;
            label4.Text = "✵";
            // 
            // label5
            // 
            label5.AutoSize = true;
            label5.Location = new Point(56, 9);
            label5.Name = "label5";
            label5.Size = new Size(0, 15);
            label5.TabIndex = 12;
            // 
            // label6
            // 
            label6.AutoSize = true;
            label6.Location = new Point(12, 9);
            label6.Name = "label6";
            label6.Size = new Size(0, 15);
            label6.TabIndex = 13;
            // 
            // label7
            // 
            label7.AutoSize = true;
            label7.Location = new Point(12, 351);
            label7.Name = "label7";
            label7.Size = new Size(0, 15);
            label7.TabIndex = 14;
            // 
            // button5
            // 
            button5.Location = new Point(644, 5);
            button5.Name = "button5";
            button5.Size = new Size(96, 23);
            button5.TabIndex = 15;
            button5.Text = "Déconnexion";
            button5.UseVisualStyleBackColor = true;
            button5.Click += button5_Click;
            // 
            // Form2
            // 
            AutoScaleDimensions = new SizeF(7F, 15F);
            AutoScaleMode = AutoScaleMode.Font;
            ClientSize = new Size(752, 375);
            Controls.Add(button5);
            Controls.Add(label7);
            Controls.Add(label6);
            Controls.Add(label5);
            Controls.Add(label4);
            Controls.Add(label3);
            Controls.Add(label2);
            Controls.Add(label1);
            Controls.Add(button4);
            Controls.Add(button3);
            Controls.Add(button2);
            Controls.Add(vente);
            Name = "Form2";
            Text = "Form2";
            ResumeLayout(false);
            PerformLayout();
        }

        #endregion

        private Button vente;
        private Button button2;
        private Button button3;
        private Button button4;
        private Label label1;
        private Label label2;
        private Label label3;
        private Label label4;
        private Label label5;
        private Label label6;
        private Label label7;
        private Button button5;
    }
}