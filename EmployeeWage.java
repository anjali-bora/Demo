class EmployeeWage {

  public static final int Is_Part_Time =1;
  public static final int Is_Full_Time =2;
  public static final int Emp_Rate_Per_Hour=20;
  public static final int Num_Of_Working_Days=20;
  public static final int Max_Hours_In_Month=100;

  void EmpSalary() {

    int emphr=0, TotalWorkingDays=0, TotalEmpHrs=0;

    while (TotalEmpHrs <= Max_Hours_In_Month && TotalWorkingDays < Num_Of_Working_Days)
    {
      TotalWorkingDays++;
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
      TotalEmpHrs += emphr;
      System.out.println("Day : "+TotalWorkingDays  +  "Emp Hr : " + emphr);
    }
      int TotalEmpWage = TotalEmpHrs * Emp_Rate_Per_Hour;
      System.out.println("Total Employee Wage : " +TotalEmpWage);
  }
   public static void main(String args[]) {

	 System.out.println("Welcome to employee wage program");
	 EmployeeWage e = new EmployeeWage();
	 e.EmpSalary();
   }

}


