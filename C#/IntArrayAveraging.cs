using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

/* Simple exercise to return average and median */

namespace ArrayProcessing
{
    class IntArrays
    {

        public static int getMedian(int[] inputRef) {

            Array.Sort(inputRef);
            int len = inputRef.Length;

            if (len % 2 != 1) {
                
                // handle even array of numbers
                int[] midPositions = { inputRef[((len / 2) - 1) ], inputRef[(len / 2)] };
                return getMean(midPositions);
            } else {
                return inputRef[((len + 1) / 2) - 1];
            }

        }

        public static int getMean(int[] inputRef) {
            
            return getSum(inputRef) / inputRef.Length;
        }

        public static int getSum(int[] inputRef) {
            
            int sum = 0;
            foreach (int num in inputRef) {
                sum += num;
            }

            return sum;
        }

        static void Main() {

            int[] ints = { 2, 34, 5, 54, 23, 28, 7 };
            Console.WriteLine(" Array [{0}]", String.Join(", ", ints));
            Console.WriteLine("Average is {0}", getMean(ints));
            Console.WriteLine("Median is {0}", getMedian(ints));
            Console.ReadKey();
        }
    }
}
