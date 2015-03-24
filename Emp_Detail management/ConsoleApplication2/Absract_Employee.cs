using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Emp_Database;
namespace DetailManagement
{
    public abstract class Employee
    {
        public int empCode;
        public  string empName, empDept;
      
        
        
        public void Accept()
        {
            Console.WriteLine("Name: ");
            empName = Console.ReadLine();
            Console.WriteLine("Code: ");
            empCode = Convert.ToInt32(Console.ReadLine());
            Console.WriteLine("Department: ");
            empDept = Console.ReadLine();
            DbConnection db = new DbConnection();
            db.Insert(empName, empCode, empDept);

        }
        public void Show()
        {
            Console.WriteLine("Name : " + empName + " Code : " + empCode + " Dept : " + empDept);
        }
        public abstract double CalculateSalary(double hoursWorked, double overWorked);

       
    }
    
   
    
}