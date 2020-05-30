class EmployeeWage {

  public static final int Is_Part_Time =1;
  public static final int Is_Full_Time =2;
  public static final int Emp_Rate_Per_Hour=20;
  public static final int Num_Of_Working_Days=20;

  public static void main(String[] args)
  {
    int emphr=0, empwage=0, TotalEmpWage=0;

    for (int day=0; day < Num_Of_Working_Days; day++) 
    {
    int empCheck = (int) Math.floor(Math.random() * 10) % 3;
    switch (empCheck) {
      case Is_Part_Time:
	emphr=4;
         break;
      case Is_Full_Time:
         emphr=8;
	 break;
      default:
        emphr=0;
    }
    empwage= emphr * Emp_Rate_Per_Hour;
    TotalEmpWage += empwage;
    System.out.println("Employee Wage = " +empwage);
    }
	System.out.println("Total Emp Wage : " +TotalEmpWage);
  }

}


