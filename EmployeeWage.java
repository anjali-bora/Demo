class EmployeeWage {

  public static final int Is_Part_Time =1;
  public static final int Is_Full_Time =2;

  public final String company;
  public final int emp_rate_per_hour;
  public final int num_Of_Working_Days;
  public final int max_Hours_In_Month;
  public int TotalEmpWage;


  public EmployeeWage(String company, int emp_rate_per_hour, int num_Of_Working_Days, int max_Hours_In_Month) {

    this.company = company;
    this.emp_rate_per_hour = emp_rate_per_hour;
    this.num_Of_Working_Days = num_Of_Working_Days;
    this.max_Hours_In_Month = max_Hours_In_Month;
}

  public void ComputeEmpWage() {
    int emphr=0, TotalWorkingDays=0, TotalEmpHrs=0;

    while (TotalEmpHrs <= max_Hours_In_Month && TotalWorkingDays < num_Of_Working_Days) {
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
      TotalEmpWage = TotalEmpHrs * emp_rate_per_hour;
  }
  public String toString() {
      return "Total Emp Wage For Company : " +company+ "is: " + TotalEmpWage;
  }
   public static void main(String args[]) {
      EmployeeWage dmart = new EmployeeWage("DMart", 20, 2, 10);
      EmployeeWage reliance = new EmployeeWage("Reliance", 10, 4, 20);
      dmart.ComputeEmpWage();
      System.out.println(dmart);
      reliance.ComputeEmpWage();
      System.out.println(reliance);
  }

}


