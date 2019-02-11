using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace FizzBuzz
{
    class FizzBuzz
    {
        static void Main()
        {

            for (int i = 1; i <= 100; i++)
            {
                Console.WriteLine("{0} {1}{2}", i,
                    Convert.ToBoolean(i % 3) ? "" : "Fizz", Convert.ToBoolean(i % 5) ? "" : "Buzz");
            }

            Console.ReadKey();
        }
    }
}
