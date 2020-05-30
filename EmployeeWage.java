class EmployeeWage
{
  public static void main(String[] args)
  {
    int Is_Full_Time=1;
    int Is_Part_Time=2;

    int Emp_Rate_Per_Hour=20;
    int emphr=0;
    int empwage=0;
    double empCheck = Math.floor(Math.random() * 10) % 3;
    if (empCheck == Is_Part_Time)
	emphr=4;
    else if (empCheck == Is_Full_Time)
        emphr=8;
    else
        emphr=0;
    empwage= emphr * Emp_Rate_Per_Hour;
    System.out.println("Employee Wage = " +empwage);
  }

}


