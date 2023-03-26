page 50100 EmployeePage
{
    PageType = Card;
    ApplicationArea = All;
    UsageCategory = Administration;
    //with which table you will connect
    SourceTable = Employee;

    layout
    {
        area(Content)
        {
            group("General info of the employee")
            {
                field("emp code"; Rec."emp code")
                {
                    ApplicationArea = All;

                }
                field("emp name"; Rec."emp name")
                {
                    ApplicationArea = All;

                }
                field("emp gender"; Rec.gender)
                {
                    ApplicationArea = All;

                }
                field("emp salary"; Rec.salary)
                {
                    ApplicationArea = All;

                }


            }
            group("other info")
            {
                field("emp city"; Rec.city)
                {
                    ApplicationArea = All;

                }
                field("emp DOJ"; Rec."date of joining")
                {
                    ApplicationArea = All;

                }
            }
        }
    }

    actions
    {
        area(Processing)
        {
            action("action test")
            {
                ApplicationArea = All;

                trigger OnAction()
                begin
                    Message('data saved in the employee table');
                end;
            }
        }
    }

    var
        myInt: Integer;
}