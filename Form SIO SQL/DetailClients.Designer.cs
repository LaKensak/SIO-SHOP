﻿namespace Form_SIO_SQL
{
    partial class DetailClients
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
            textBox1 = new TextBox();
            button1 = new Button();
            label6 = new Label();
            label5 = new Label();
            label4 = new Label();
            label3 = new Label();
            label2 = new Label();
            textBox4 = new TextBox();
            textBox3 = new TextBox();
            textBox2 = new TextBox();
            label1 = new Label();
            SuspendLayout();
            // 
            // textBox1
            // 
            textBox1.Location = new Point(618, 221);
            textBox1.Name = "textBox1";
            textBox1.Size = new Size(145, 23);
            textBox1.TabIndex = 25;
            // 
            // button1
            // 
            button1.Location = new Point(527, 327);
            button1.Name = "button1";
            button1.Size = new Size(236, 23);
            button1.TabIndex = 24;
            button1.Text = "Ajouter le client";
            button1.UseVisualStyleBackColor = true;
            button1.Click += button1_Click;
            // 
            // label6
            // 
            label6.AutoSize = true;
            label6.Font = new Font("Segoe UI", 11F);
            label6.Location = new Point(563, 224);
            label6.Name = "label6";
            label6.Size = new Size(45, 20);
            label6.TabIndex = 23;
            label6.Text = "Stock";
            // 
            // label5
            // 
            label5.AutoSize = true;
            label5.Font = new Font("Segoe UI", 11F);
            label5.Location = new Point(572, 185);
            label5.Name = "label5";
            label5.Size = new Size(33, 20);
            label5.TabIndex = 22;
            label5.Text = "Prix";
            // 
            // label4
            // 
            label4.AutoSize = true;
            label4.Font = new Font("Segoe UI", 11F);
            label4.Location = new Point(563, 146);
            label4.Name = "label4";
            label4.Size = new Size(42, 20);
            label4.TabIndex = 21;
            label4.Text = "Nom";
            // 
            // label3
            // 
            label3.AutoSize = true;
            label3.Font = new Font("Segoe UI", 11F);
            label3.Location = new Point(552, 105);
            label3.Name = "label3";
            label3.Size = new Size(60, 20);
            label3.TabIndex = 20;
            label3.Text = "Marque";
            // 
            // label2
            // 
            label2.AutoSize = true;
            label2.Font = new Font("Segoe UI", 12F);
            label2.Location = new Point(536, 94);
            label2.Name = "label2";
            label2.Size = new Size(0, 21);
            label2.TabIndex = 19;
            // 
            // textBox4
            // 
            textBox4.Location = new Point(618, 182);
            textBox4.Name = "textBox4";
            textBox4.Size = new Size(145, 23);
            textBox4.TabIndex = 17;
            // 
            // textBox3
            // 
            textBox3.Location = new Point(618, 143);
            textBox3.Name = "textBox3";
            textBox3.Size = new Size(145, 23);
            textBox3.TabIndex = 16;
            // 
            // textBox2
            // 
            textBox2.Location = new Point(618, 105);
            textBox2.Name = "textBox2";
            textBox2.Size = new Size(145, 23);
            textBox2.TabIndex = 15;
            // 
            // label1
            // 
            label1.AutoSize = true;
            label1.Font = new Font("Segoe UI", 15F, FontStyle.Bold);
            label1.Location = new Point(586, 34);
            label1.Name = "label1";
            label1.Size = new Size(189, 28);
            label1.TabIndex = 14;
            label1.Text = "Ajouter un produit";
            // 
            // DetailClients
            // 
            AutoScaleDimensions = new SizeF(7F, 15F);
            AutoScaleMode = AutoScaleMode.Font;
            ClientSize = new Size(800, 450);
            Controls.Add(textBox1);
            Controls.Add(button1);
            Controls.Add(label6);
            Controls.Add(label5);
            Controls.Add(label4);
            Controls.Add(label3);
            Controls.Add(label2);
            Controls.Add(textBox4);
            Controls.Add(textBox3);
            Controls.Add(textBox2);
            Controls.Add(label1);
            Name = "DetailClients";
            Text = "DetailClients";
            ResumeLayout(false);
            PerformLayout();
        }

        #endregion
        private TextBox textBox1;
        private Button button1;
        private Label label6;
        private Label label5;
        private Label label4;
        private Label label3;
        private Label label2;
        private TextBox textBox4;
        private TextBox textBox3;
        private TextBox textBox2;
        private Label label1;
    }
}