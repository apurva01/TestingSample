using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;


namespace DetailManagement
{

    class Program
    {
        
        static void Main(string[] args)
        {
            int iChoice, iCode;
            string sEmpName;
            double hoursWorked, overWorked;

            EmployeeList lstUserName = new EmployeeList();
            Employee emp;
            Console.WriteLine("          WELCOME TO Emp_Detail Management");

            Console.WriteLine("       ----------------*****----------------");
            while (true)
            {
                //List<String> lstUserName = new List<string>();
                //lstUserName.Add("A");
                //lstUserName.Contains("A");

                Console.WriteLine("1)Add Permanent Employeee \n2)Add Temporary Employee \n3)Search by Code \n4)search by Name \n5)Exit");
                Console.WriteLine("Enter choice");
                iChoice = Convert.ToInt32(Console.ReadLine());
                switch (iChoice)
                {
                       
                        
                    case 1:
                        emp = new PermanentEmployee();
                       // emp = new drived();
                        emp.Accept();
                      
                            Console.Write("\n       Please enter the number of hours worked this week: ");
                            hoursWorked = Convert.ToDouble(Console.ReadLine());

                            Console.Write("\n       Please enter the number of OVERTIME HOURS worked this week: ");

                            overWorked = Convert.ToInt32(Console.ReadLine());

                           
                            Console.WriteLine(emp.CalculateSalary(hoursWorked, overWorked));
                            lstUserName.Add(emp);
                                               
                        break;
                    case 2:
                        emp = new TemporaryEmployee();
                        // emp = new drived();
                        emp.Accept();
                                              
                            Console.Write("\n       Please enter the number of hours worked this week: ");
                            hoursWorked = Convert.ToDouble(Console.ReadLine());

                            Console.Write("\n       Please enter the number of OVERTIME HOURS worked this week: ");

                            overWorked = Convert.ToInt32(Console.ReadLine());

                            //Console.Write("\n       Please enter employee's HOURLY PAY RATE: ");
                            //userInput = Console.ReadLine();
                            //payRate = Convert.ToDouble(userInput);
                            Console.WriteLine(emp.CalculateSalary(hoursWorked, overWorked));
                            lstUserName.Add(emp);
                       
                        break;
                    case 3:
                        
                        Console.WriteLine("Enter search Code: ");
                        iCode = Convert.ToInt32(Console.ReadLine());
                        emp = lstUserName[iCode];
                        if (emp != null)
                            emp.Show();
                        else Console.WriteLine("not found");
                
                        break;
                    case 4:
                          Console.WriteLine("enter search name : ");
                            sEmpName = Console.ReadLine();
                            emp = lstUserName[sEmpName];
                            if (emp != null)
                                emp.Show();
                            else Console.WriteLine("not found");
                        
                        break;
                    //case 4:
                    //    Console.WriteLine("Enter search Department: ");
                    //    dept = Console.ReadLine();
                    //    emp = elist[dept];
                    //    if (emp != null)
                    //        emp.Show();
                    //else Console.WriteLine("Not found");
                    case 5:
                        Console.WriteLine("Please press enter to exit");
                        goto exit;
                    default:
                        Console.WriteLine("Invalid choice");
                        break;
                }
                Console.WriteLine("Press enter to continue");
                      
                Console.ReadLine();
            }
        exit:
            Console.ReadLine();
        }

      
    }
    //public class drived : Employee
    //{
    //    //public drived() : base() { }
    //}
     
}





























































































    //public abstract class Employee{

    //  public string name, dept;
    // public int code;

    //public abstract class Employee
    //{
    //    int code;
    //    string name, dept;

    //    public Employee()
    //    {

    //    }

    //    public int Code
    //    {
    //        get { return code; }
    //    }
    //    public string Name
    //    {
    //        get { return name; }
    //    }
    //    //public string Dept
    //    //{
    //    //    get { return dept; }
    //    //}

    //    public void Accept()
    //    {
    //        Console.WriteLine("Name: ");
    //        name = Console.ReadLine();
    //        Console.WriteLine("Code: ");
    //        code = Convert.ToInt32(Console.ReadLine());
    //        Console.WriteLine("Department: ");
    //        dept = Console.ReadLine();
    //    }
    //    public void Show()
    //    {
    //        Console.WriteLine("Name : " + name + " Code : " + code + " Dept : " + dept);
    //    }
    //}

 
    //class EmployeeList
    //{
       
    //    Employee[] list = new Employee[5];
    //    int size;
    //    public void Add(Employee e)
    //    {
    //        if (size >= list.Length)
    //            throw new IndexOutOfRangeException("list is full");
    //        list[size] = e;
    //        size++;
    //    }
    //    public Employee this[int searchCode]
    //    {
    //        get
    //        {
    //            if (size == 0)
    //                throw new Exception("list empty!");
    //            for (int i = 0; i < size; i++)
    //            {
    //                if (list[i].Code == searchCode)
    //                    return list[i];
    //            }
    //            return null;
    //        }
    //    }
    //    public Employee this[string searchName]
    //    {
    //        get
    //        {
    //            if (size == 0)
    //                throw new Exception("list empty!");
    //            for (int i = 0; i < size; i++)
    //            {
    //                if (list[i].Name == searchName)
    //                    return list[i];
    //            }
    //            return null;
    //        }
    //    }
    //}


//    class EmployeeList
//    {
//        Employee[] list = new Employee[5];
//        int Size;
//        public void Add(Employee e)
//        {
//            if (Size >= list.Length)
//                throw new IndexOutOfRangeException("list is full");
//            list[Size] = e;
//            Size++;

//        }
//        public Employee this[string searchName]
//        {
//            get
//            {
//                if (Size == 0)
//                    throw new Exception("list is empty!");
//                for (int i = 0; i < Size; i++)
//                {
//                    if (list[i].Name == searchName)
//                        return list[i];
//                }
//                return null;
//            }
//        }
//        //public Employee this[string searchDept]
//        //{
//        //    get
//        //    {
//        //        if (Size == 0)
//        //            throw new Exception("list is empty");
//        //        for(int i=0;i<Size;i++)
//        //        {
//        //            if(list[i].Dept== searchDept)
//        //                return list[i];
//        //        }
//        //        return null;
//        //        }
//        //}
//        public Employee this[int searchCode]
//        {
//            get
//            {
//                if (Size == 0)
//                    throw new Exception("list empty!");
//                for (int i = 0; i < Size; i++)
//                {
//                    if (list[i].Code == searchCode)
//                        return list[i];
//                }
//                return null;
//            }
//        }
//    }
//}
