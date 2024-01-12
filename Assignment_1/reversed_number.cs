using System;

class Program
{
    static void Main()
    {
        Console.Write("Enter a number: ");
        int number = int.Parse(Console.ReadLine());
        int reversedNumber = ReverseNumber(number);
        Console.WriteLine("Reversed Number: " + reversedNumber);
    }

    static int ReverseNumber(int num)
    {
        int reversedNum = 0;

        while (num > 0)
        {
            int digit = num % 10;
            reversedNum = reversedNum * 10 + digit;
            num = num / 10;
        }

        return reversedNum;
    }
}