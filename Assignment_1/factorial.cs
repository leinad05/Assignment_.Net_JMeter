using System;

class Program
{
    static void Main()
    {
        Console.Write("Enter any Number: ");
        int angka = int.Parse(Console.ReadLine());
        long hasilFaktorial = HitungFaktorial(angka);

        Console.WriteLine($"Factorial of {angka} is: {hasilFaktorial}");
    }

    static long HitungFaktorial(int n)
    {
        if (n == 0 || n == 1)
            return 1;
        else
            return n * HitungFaktorial(n - 1);
    }
}
