using System;

class Program
{
    public static void Main()
    {
        int n = 5;

        for (int i = 0; i < n; i++)
        {
            for (int j = 0; j < n - i - 1; j++)
            {
                Console.Write(" ");
            }

            char ch = 'A';

            for (int j = 0; j <= i; j++)
            {
                Console.Write(ch);
                ch++;
            }

            ch = (char)(ch - 2);

            for (int j = 0; j < i; j++)
            {
                Console.Write(ch);
                ch--;
            }

            Console.WriteLine();
        }
    }
}