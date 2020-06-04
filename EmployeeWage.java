class EmployeeWage {

  public static final int Is_Part_Time =1;
  public static final int Is_Full_Time =2;

  public static int ComputeEmpWage(String company, int Emp_Rate_Per_Hour, int Num_Of_Working_Days, int Max_Hours_In_Month) {


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
      System.out.println("Total Employee Wage for Company : " +company+" is: " +TotalEmpWage);
         return TotalEmpWage;
  }
   public static void main(String args[]) {

	ComputeEmpWage("DMart", 20, 2, 10);
        ComputeEmpWage("Reliance", 10, 4, 20);
   }

}


