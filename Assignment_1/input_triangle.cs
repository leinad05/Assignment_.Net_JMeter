using System;

class Program
{
    public static void Main()
    {
        Console.Write("Enter the Range = ");
        int n = int.Parse(Console.ReadLine());

        for (int i = 0; i < n; i++)
        {
            for (int j = 0; j < n - i - 1; j++)
            {
                Console.Write(" ");
            }

            int num = 1;
            for (int j = 0; j <= i; j++)
            {
                Console.Write(num);
                num++;
            }

            num = num - 2;
            for (int j = 0; j < i; j++)
            {
                Console.Write(num);
                num--;
            }

            Console.WriteLine();
        }
    }
}