using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DetailManagement
{
    class TemporaryEmployee:Employee
    {
           public override double CalculateSalary(double hoursWorked, double overWorked)
            {
                double payRate = 45.88;
                double grossPay = (hoursWorked * payRate + overWorked * 1.5 * payRate);
                return grossPay;
            }


            public double payRate { get; set; }

            public int overWorked { get; set; }

            public double hoursWorked { get; set; }

        }
    }

