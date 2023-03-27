page 50103 anotherpage
{
    PageType = Card;
    ApplicationArea = All;
    UsageCategory = Administration;

    actions
    {
        area(Processing)
        {
            action(Addition)
            {

                ApplicationArea = All;
                trigger OnAction()

                begin
                    Mycode.run()
                end;

            }
        }
    }



    var
        Mycode: Codeunit MyCodeunit;
}