using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DetailManagement
{
    class EmployeeList
    {

        Employee[] arrEmployee = new Employee[20];
        int iEmpCount;
        public void Add(Employee e)
        {
            if (iEmpCount >= arrEmployee.Length)
                throw new IndexOutOfRangeException("list is full");
            arrEmployee[iEmpCount] = e;
            iEmpCount++;
        }
        public Employee this[int searchCode]
        {
            get
            {
                if (iEmpCount == 0)
                    throw new Exception("list empty!");
                for (int i = 0; i < iEmpCount; i++)
                {
                    if (arrEmployee[i].empCode == searchCode)
                        return arrEmployee[i];
                }
                return null;
            }
        }
        public Employee this[string searchName]
        {
            get
            {
                if (iEmpCount == 0)
                    throw new Exception("list empty!");
                for (int i = 0; i < iEmpCount; i++)
                {
                    if (arrEmployee[i].empName == searchName)
                        return arrEmployee[i];
                }
                return null;
            }
        }
    }
}