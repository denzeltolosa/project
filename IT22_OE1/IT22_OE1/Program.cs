using System;

namespace IT22_OE1
{
    class Program
    {
        static void Main(string[] args)
        {
            int cyear = 2021, age;
            Console.WriteLine("Enter your name: ");
            string name = Console.ReadLine();
            Console.WriteLine("Enter your birthyear: ");
            int bday = Convert.ToInt32(Console.ReadLine());
            age = cyear - bday;
            Console.Write(" Your name is " + name + " you are " + age);
            if (age>=18)
            {
                Console.Write("\nYou are 18 and above... \nYou can go out!");
            }
            else{
                Console.Write("\nYou are below 18... \nStay at home!");
            }
            Console.ReadKey();

        }
    }
}
