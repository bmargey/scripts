using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Windows.Forms;

namespace PalindromeDetectorForm
{
    public partial class Form1 : Form
    {
        public Form1()
        {
            InitializeComponent();
        }

        private String getReverse(String input) 
        {
            char[] chars = input.ToCharArray();
            Array.Reverse(chars);
            return new String(chars);
        }

        private Boolean checkPalindrome(String input) 
        {
            String reverse = getReverse(input);
            
            return reverse == input ? true : false;
        }

        private void feedback()
        {
            Boolean x = checkPalindrome(textBox1.Text);
            String decision = x ? " is " : " is not ";

            MessageBox.Show(textBox1.Text + decision + "a palindrome.");
        }

        private void button1_Click(object sender, EventArgs e)
        {
            feedback();
        }

        private void textBox1_KeyPress(object sender, KeyPressEventArgs e)
        {
           
            if (e.KeyChar == (char)ConsoleKey.Enter)
            {
                MessageBox.Show("You haven't entered a string!");
            }
        }

        private void label1_Click(object sender, EventArgs e)
        {

        }
    }
}
