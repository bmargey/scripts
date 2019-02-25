using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

/* Simple exercise to check char count in string */

namespace StringProcessing
{
    class characterCount
    {   

        public static int charCount(string s, achar target) {

            int count = 0;
            foreach (char c in s) {
                if (c.Equals(target)) {
                    count++;
                } 
            }
            return count;
        }

        static void Main() {
            
            Console.Write("Enter a string: ");
            string input = Console.ReadLine();

            Console.Write("Enter a character: ");
            string checkChar = Console.ReadLine();

            if (checkChar.Length > 1) {
                Console.WriteLine("More than one check char");
                return;
            }

            Console.WriteLine("There's {0} '{1}' chars in entered string.",
                charCount(input, checkChar[0]), checkChar);
            Console.ReadKey();
            return;
        }
    }
}
